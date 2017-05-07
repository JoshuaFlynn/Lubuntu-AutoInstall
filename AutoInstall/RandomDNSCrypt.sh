#!/bin/bash

#Initialise a list of provider names to randomly select from
providerlist[1]=4armed
providerlist[2]=cisco
providerlist[3]=cisco-familyshield
providerlist[4]=cisco-ipv6
providerlist[5]=cisco-port53
providerlist[6]=cloudns-can
providerlist[7]=cloudns-syd
providerlist[8]=cs-cawest
providerlist[9]=cs-cfi
providerlist[10]=cs-cfii
providerlist[11]=cs-ch
providerlist[12]=cs-de
providerlist[13]=cs-fr
providerlist[14]=cs-fr2
providerlist[15]=cs-rome
providerlist[16]=cs-uk
providerlist[17]=cs-useast
providerlist[18]=cs-usnorth
providerlist[19]=cs-ussouth
providerlist[20]=cs-ussouth2
providerlist[21]=cs-uswest
providerlist[22]=cs-uswest2
providerlist[23]=d0wn-bg-ns1
providerlist[24]=d0wn-ch-ns1
providerlist[25]=d0wn-de-ns1
providerlist[26]=d0wn-fr-ns2
providerlist[27]=d0wn-gr-ns1
providerlist[28]=d0wn-it-ns1
providerlist[29]=d0wn-lv-ns1
providerlist[30]=d0wn-nl-ns1
providerlist[31]=d0wn-nl-ns2
providerlist[32]=d0wn-random-ns1
providerlist[33]=d0wn-random-ns2
providerlist[34]=d0wn-ro-ns1
providerlist[35]=d0wn-ru-ns1
providerlist[36]=d0wn-tz-ns1
providerlist[37]=d0wn-ua-ns1
providerlist[38]=dnscrypt.eu-dk
providerlist[39]=dnscrypt.eu-dk-ipv6
providerlist[40]=dnscrypt.eu-nl
providerlist[41]=dnscrypt.eu-nl-ipv6
providerlist[42]=dnscrypt.org-fr
providerlist[43]=fvz-rec-at-vie-01
providerlist[44]=fvz-rec-ca-tor-01
providerlist[45]=fvz-rec-ca-tor-01-ipv6
providerlist[46]=fvz-rec-de-fra-01
providerlist[47]=fvz-rec-fr-sxb-01
providerlist[48]=fvz-rec-gb-brs-01
providerlist[49]=fvz-rec-gb-lon-01
providerlist[50]=fvz-rec-gb-lon-03
providerlist[51]=fvz-rec-hk-ztw-01
providerlist[52]=fvz-rec-ie-du-01
providerlist[53]=fvz-rec-no-osl-01
providerlist[54]=fvz-rec-nz-akl-01
providerlist[55]=fvz-rec-nz-akl-01-ipv6
providerlist[56]=fvz-rec-us-ler-01
providerlist[57]=fvz-rec-us-mia-01
providerlist[58]=ipredator
providerlist[59]=ns0.dnscrypt.is
providerlist[60]=okturtles
providerlist[61]=opennic-tumabox
providerlist[62]=ovpnto-ro
providerlist[63]=ovpnto-se
providerlist[64]=ovpnto-se-ipv6
providerlist[65]=shea-us-noads
providerlist[66]=shea-us-noads-ipv6
providerlist[67]=soltysiak
providerlist[68]=soltysiak-ipv6

#Random variable
RANDOM=$$$(date +%s)

selectedprovider=${providerlist[$RANDOM % ${#providerlist[@]} ]}

#Get it setup right here.
dnscrypt-proxy --daemonize --user=dnscrypt -R  $selectedprovider