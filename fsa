#!/bin/python2
import urllib2
import random
import lxml.html
# import time
import sh


def getpass(f):
    passwd = f.xpath('/html/body/a/text()')[8]
    print(passwd)
    return passwd


def getip(f):
    IPs = f.xpath('//a/@href')[3:10:2]
    IP = IPs[random.randint(0, 3)].split('/')[2]
    print(IP)
    return IP


url = "http://it-player.com/"
f = lxml.html.fromstring(urllib2.urlopen(url).read())

IP = getip(f)
passwd = getpass(f)
# time.sleep(2)
# server port is default 8388, method is default aes-256-cfb
sh.sslocal(s=IP, l=10802, k=passwd, t=600)
