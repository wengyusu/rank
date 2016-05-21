import hmac
import hashlib
import base64
import time
from urllib.parse import quote

names=[]
def ksort(d):
     return [(k,d[k]) for k in sorted(d.keys())]

def urlcreate(params):
    aws_access_key_id = b"AKIAJIKVGLZ2P37DL2EQ"
    aws_secret_key = b"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"
    endpoint = "webservices.amazon.co.jp"
    uri = "/onca/xml"
    gmtime=time.gmtime()
    '''params = {
        "Service" : "AWSECommerceService",
        "Operation":  "ItemSearch",
        "AWSAccessKeyId":  "AKIAJIKVGLZ2P37DL2EQ",
        "AssociateTag":  "wengyusu-22",
        "SearchIndex" : "DVD",
        "ResponseGroup":  "ItemAttributes,SalesRank",
        "Sort" : "salesrank",
        "BrowseNode":  "4367309051",
        "ItemPage":  str(i)
    }'''
    params["Timestamp"]=time.strftime("%Y-%m-%dT%H:%M:%SZ",gmtime)
    params= ksort(params)
    #print(params)
    '''dict={}
    for item in params:
    	dict[item[0]] = item[1]
    params=dict
    '''
    #params=simplejson.loads(params)
    pairs=[]
    for i in params:
    	pairs.append(i[0]+"="+quote(i[1]))


    canonical_query_string = '&'.join(pairs)
    #print(canonical_query_string)
    string_to_sign = "GET\n"+endpoint+"\n"+uri+"\n"+canonical_query_string
    string_to_sign=str.encode(string_to_sign) 
    signature=base64.b64encode(hmac.new(aws_secret_key,string_to_sign,hashlib.sha256).digest())
    #print(signature)
    request_url = 'http://'+endpoint+uri+'?'+canonical_query_string+'&Signature='+quote(signature)
    print("Signed URL:{0}".format(request_url))
    return request_url




def requestnparse(url):
    import requests

    # f = open('url.txt', 'r')
    # url=f.readline()
    # f.close()
    # print(url)
    r=requests.get(url)
    print(url)
    if r.status_code == requests.codes.ok:
        content=r.content
        try:
            f=open('test.xml','wb')
            f.write(content)
            f.close()
            print("Success")
        except Exception as e:
            print(e)

    import xml.etree.ElementTree as ET  
    import pymysql

    conn = pymysql.connect(host='127.0.0.1', user='root', port=3308, passwd='970705', db='rank', charset='utf8')
    cur=conn.cursor()
    xmlns="{http://webservices.amazon.com/AWSECommerceService/2011-08-01}"
    tree = ET.parse('test.xml')
    root = tree.getroot()
    # print(root)
    items=root.find(xmlns+'Items')
    # print(items)
    #f=open('result.txt','ab')
    for item in items.findall(xmlns+'Item'):
        salesrank=item.find(xmlns+'SalesRank').text
        name=item.find(xmlns+'ItemAttributes').find(xmlns+'Title').text
        print(name+"\n")
        sql="INSERT INTO rank VALUES(%s,%s,%s) ON DUPLICATE KEY UPDATE rank=%s"
        value=(name,salesrank,0,salesrank)
        sta=cur.execute(sql,value)
        conn.commit()
        '''#print(salesrank,name)
        f.write(salesrank.encode())
        f.write(b'\n')
        f.write(name.encode())
        f.write(b'\n')'''

    #f.close()
    cur.close()
    conn.close()

for i in range(3):
    params = {
        "Service" : "AWSECommerceService",
        "Operation":  "ItemSearch",
        "AWSAccessKeyId":  "AKIAJIKVGLZ2P37DL2EQ",
        "AssociateTag":  "wengyusu-22",
        "SearchIndex" : "DVD",
        "ResponseGroup":  "ItemAttributes,SalesRank",
        "Sort" : "salesrank",
        "BrowseNode":  "4367309051",
        "ItemPage":  str(i)
    }
    url=urlcreate(params)
    requestnparse(url)
params = {
    "Service" : "AWSECommerceService",
    "Operation":  "ItemLookup",
    "AWSAccessKeyId":  "AKIAJIKVGLZ2P37DL2EQ",
    "AssociateTag":  "wengyusu-22",
    "ItemId" : "B01FHEHHPE",
    "ResponseGroup":  "ItemAttributes,SalesRank",
    "IdType" : "ASIN"
    }
    url=urlcreate(params)
    requestnparse(url)