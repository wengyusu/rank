import hmac
import hashlib
import base64
import requests
import pymysql
import time
from bs4 import BeautifulSoup
from urllib.parse import quote

conn = pymysql.connect(host='localhost', user='root', port=3306, passwd='', db='rank', charset='utf8')
cur=conn.cursor()

url="http://www.amazon.co.jp/gp/bestsellers/dvd/ref=zg_bs_dvd_pg_1?ie=UTF8&pg="

def ksort(d):
	return [(k,d[k]) for k in sorted(d.keys())]

def urlcreate(params):
	aws_access_key_id = b"AKIAIWJPQMZ22IJVEP5Q"
	aws_secret_key = b"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"
	endpoint = "webservices.amazon.co.jp"
	uri = "/onca/xml"
	gmtime=time.gmtime()
	params["Timestamp"]=time.strftime("%Y-%m-%dT%H:%M:%SZ",gmtime)
	params= ksort(params)
	pairs=[]
	for i in params:
		pairs.append(i[0]+"="+quote(i[1]))

	canonical_query_string = '&'.join(pairs)
	string_to_sign = "GET\n"+endpoint+"\n"+uri+"\n"+canonical_query_string
	string_to_sign=str.encode(string_to_sign) 
	signature=base64.b64encode(hmac.new(aws_secret_key,string_to_sign,hashlib.sha256).digest())
	request_url = 'http://'+endpoint+uri+'?'+canonical_query_string+'&Signature='+quote(signature)
	print(request_url)
	return request_url

def parse(url):
	r=requests.get(url)
	while r.status_code != requests.codes.ok:
		r=requests.get(url)
	content=r.content
	try:
		f=open('top.xml','wb')
		f.write(content)
		f.close()
		print("Success")
	except Exception as e:
		print(e)

	import xml.etree.ElementTree as ET  
	xmlns="{http://webservices.amazon.com/AWSECommerceService/2011-08-01}"
	tree = ET.parse('top.xml')
	root = tree.getroot()
	browsernodes=root.find(xmlns+'Items').find(xmlns+'Item').find(xmlns+'BrowseNodes').findall(xmlns+'BrowseNode')
	for browsernode in browsernodes :
		print(browsernode.find(xmlns+'BrowseNodeId').text)
		if int(browsernode.find(xmlns+'BrowseNodeId').text)==562020:
			items=root.find(xmlns+'Items')
			for item in items.findall(xmlns+'Item'):
				salesrank=item.find(xmlns+'SalesRank').text
				name=item.find(xmlns+'ItemAttributes').find(xmlns+'Title').text
				#print(name)
				sql="INSERT INTO top VALUES(%s,%s,%s) ON DUPLICATE KEY UPDATE rank=%s"
				value=(name,salesrank,0,salesrank)
				sta=cur.execute(sql,value)
				conn.commit()
			break;



def spider(id):
	detailurls=[]
	purl=url+str(id)
	print(purl)
	r=requests.get(purl)
	while r.status_code != requests.codes.ok:
		r=requests.get(purl)
	soup = BeautifulSoup(r.content, "lxml")
	titles=soup.find_all("div",class_="zg_title")
	for title in titles:
		detailurls.append(BeautifulSoup(str(title),"lxml").find("a")['href'])
	for detailurl in detailurls:
		itemid=detailurl.split('/')[5].strip()
		print(itemid)
		params = {
		"Service" : "AWSECommerceService",
		"Operation":  "ItemLookup",
		"AWSAccessKeyId":  "AKIAIWJPQMZ22IJVEP5Q",
		"AssociateTag":  "wengyusu-22",
		"ItemId" : itemid,
		"IdType" : "ASIN",
		"ResponseGroup":  "BrowseNodes,ItemAttributes,SalesRank"
	}
		apiurl=urlcreate(params)
		parse(apiurl)

sql="TRUNCATE TABLE top"
sta=cur.execute(sql)

for i in range(1,6):
	spider(i)
conn.commit()



