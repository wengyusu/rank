#!/usr/bin/env python
# -*- coding: utf-8 -*-


import hmac
import hashlib
import base64
import requests
import pymysql
import time
import subprocess
from bs4 import BeautifulSoup
from urllib.parse import quote
import xml.etree.ElementTree as ET 

conn = pymysql.connect(host='localhost', user='root', port=3306, passwd='', db='rank', charset='utf8')
cur=conn.cursor()
# url="http://www.amazon.co.jp/b/ref=s9_acss_bw_fb_junglest_b4?_encoding=UTF8&node=4367309051&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=merchandised-search-4&pf_rd_r=0EEMDS8WZ0YP48RWG59H&pf_rd_t=101&pf_rd_p=311392929&pf_rd_i=562020"

def phpurl(name):
	retcode = subprocess.Popen("php /var/www/html/rank/url.php"+name,shell=True, stdout=subprocess.PIPE)
	url=retcode.stdout.read()
	return url


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
	# print(request_url)
	return request_url

def getname():
	names=[]
	names.append("クロムクロ ブルーレイ")
	url="http://www.amazon.co.jp/b/ref=s9_acss_bw_fb_junglest_b4?_encoding=UTF8&node=4367309051&pf_rd_m=AN1VRQENFRJN5&pf_rd_s=merchandised-search-4&pf_rd_r=0EEMDS8WZ0YP48RWG59H&pf_rd_t=101&pf_rd_p=311392929&pf_rd_i=562020"
	r=requests.get(url)
	while r.status_code != requests.codes.ok:
		r=requests.get(url)
	content=r.content
	soup = BeautifulSoup(r.content, "html.parser")
	targets=soup.find_all("a",class_="acs-feature-header")
	for target in targets:
		name=BeautifulSoup(str(target),"html.parser").find("a").text
		names.append(name.strip().replace('\n','').replace('\t',''))
		# print(name)
	names.remove("逆転裁判~その「真実」、異議あり! ~")
	names.append("逆転裁判 その")
	return names

def request(names):
	for name in names :
		params = {
		"Service" : "AWSECommerceService",
		"Operation":  "ItemSearch",
		"AWSAccessKeyId":  "AKIAIWJPQMZ22IJVEP5Q",
		"AssociateTag":  "wengyusu-22",
		"SearchIndex" : "DVD",
		"Sort" : "salesrank",
		"Title" : name,
		"Availability" : "Available"
	}
		pageurl=urlcreate(params)
		r=requests.get(pageurl)
		while r.status_code != requests.codes.ok:
			r=requests.get(pageurl)
		content=r.content
		try:
			f=open('page.xml','wb')
			f.write(content)
			f.close()
			print("Success")
		except Exception as e:
			print(e)

		xmlns="{http://webservices.amazon.com/AWSECommerceService/2011-08-01}"
		tree = ET.parse('page.xml')
		root = tree.getroot()
		page=int(root.find(xmlns+'Items').find(xmlns+'TotalPages').text)
		print(page)
		for i in range(1,page+1):
			params = {
		"Service" : "AWSECommerceService",
		"Operation":  "ItemSearch",
		"AWSAccessKeyId":  "AKIAIWJPQMZ22IJVEP5Q",
		"AssociateTag":  "wengyusu-22",
		"SearchIndex" : "DVD",
		"ResponseGroup" : "ItemAttributes,SalesRank",
		"Sort" : "salesrank",
		"Title" : name,
		"Availability" : "Available",
		"ItemPage" : str(i)
		}
			# print(i)
			apiurl=urlcreate(params)
			r=requests.get(apiurl)
			while r.status_code != requests.codes.ok:
				r=requests.get(apiurl)
			content=r.content
			try:
				f=open('rankfull.xml','wb')
				f.write(content)
				f.close()
				print("Success")
			except Exception as e:
				print(e)
			xmlns="{http://webservices.amazon.com/AWSECommerceService/2011-08-01}"
			tree = ET.parse('rankfull.xml')
			root = tree.getroot()
			items=root.find(xmlns+'Items')
			# print(items)
			#f=open('result.txt','ab')
			for item in items.findall(xmlns+'Item'):
				if item.find(xmlns+'SalesRank') is None:
					break
				else:
					salesrank=item.find(xmlns+'SalesRank').text
					
				Name=item.find(xmlns+'ItemAttributes').find(xmlns+'Title').text
				Name=Name.strip().replace('\n','').replace('\t','')
				print(salesrank)
				# print(name)
				sql="INSERT INTO rankfull VALUES(%s,%s,%s) ON DUPLICATE KEY UPDATE rank=%s"
				value=(Name,salesrank,0,salesrank)
				sta=cur.execute(sql,value)
				conn.commit()

if __name__ == '__main__':
	names=getname()
	request(names)
	cur.close()
	conn.close()



