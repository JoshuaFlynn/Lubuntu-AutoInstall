#!/bin/bash

#Initialise a list of provider names to randomly select from
providerlist[1]=adguard-dns-family-ns1
providerlist[2]=adguard-dns-family-ns2
providerlist[3]=adguard-dns-ns1
providerlist[4]=adguard-dns-ns2
providerlist[5]=bn-ca0
providerlist[6]=bn-ca0-ipv6
providerlist[7]=bn-fr0
providerlist[8]=bn-fr0-ipv6
providerlist[9]=bn-fr1
providerlist[10]=bn-fr1-ipv6
providerlist[11]=cisco
providerlist[12]=cisco-familyshield
providerlist[13]=cisco-ipv6
providerlist[14]=cs-caeast
providerlist[15]=cs-cawest
providerlist[16]=cs-cfi
providerlist[17]=cs-cfii
providerlist[18]=cs-ch
providerlist[19]=cs-de
providerlist[20]=cs-de2
providerlist[21]=cs-de3
providerlist[22]=cs-dk
providerlist[23]=cs-fi
providerlist[24]=cs-fr
providerlist[25]=cs-fr2
providerlist[26]=cs-lt
providerlist[27]=cs-lv
providerlist[28]=cs-md
providerlist[29]=cs-nl
providerlist[30]=cs-pl
providerlist[31]=cs-pt
providerlist[32]=cs-ro
providerlist[33]=cs-rome
providerlist[34]=cs-ru
providerlist[35]=cs-uk
providerlist[36]=cs-useast
providerlist[37]=cs-usnorth
providerlist[38]=cs-ussouth
providerlist[39]=cs-ussouth2
providerlist[40]=cs-uswest2
providerlist[41]=cs-uswest3
providerlist[42]=cs-uswest4
providerlist[43]=d0wn-at-ns1
providerlist[44]=d0wn-bg-ns1
providerlist[45]=d0wn-cr-ns1
providerlist[46]=d0wn-cy-ns1
providerlist[47]=d0wn-cz-ns1
providerlist[48]=d0wn-de-ns1
providerlist[49]=d0wn-de-ns1-ipv6
providerlist[50]=d0wn-de-ns2
providerlist[51]=d0wn-dk-ns1
providerlist[52]=d0wn-es-ns1
providerlist[53]=d0wn-fr-ns1
providerlist[54]=d0wn-fr-ns2
providerlist[55]=d0wn-fr-ns2-ipv6
providerlist[56]=d0wn-gr-ns1
providerlist[57]=d0wn-hk-ns1
providerlist[58]=d0wn-id-ns1
providerlist[59]=d0wn-is-ns1
providerlist[60]=d0wn-is-ns2
providerlist[61]=d0wn-it-ns1
providerlist[62]=d0wn-lv-ns1
providerlist[63]=d0wn-lv-ns2
providerlist[64]=d0wn-lv-ns2-ipv6
providerlist[65]=d0wn-md-ns1
providerlist[66]=d0wn-md-ns1-ipv6
providerlist[67]=d0wn-mx-ns1
providerlist[68]=d0wn-nl-ns1
providerlist[69]=d0wn-nl-ns1-ipv6
providerlist[70]=d0wn-nl-ns2
providerlist[71]=d0wn-nl-ns2-ipv6
providerlist[72]=d0wn-nl-ns3
providerlist[73]=d0wn-nl-ns3-ipv6
providerlist[74]=d0wn-nl-ns4
providerlist[75]=d0wn-random-ns2
providerlist[76]=d0wn-random-ns2-ipv6
providerlist[77]=d0wn-ro-ns1
providerlist[78]=d0wn-ro-ns1-ipv6
providerlist[79]=d0wn-ru-ns1
providerlist[80]=d0wn-se-ns1
providerlist[81]=d0wn-se-ns1-ipv6
providerlist[82]=d0wn-se-ns2
providerlist[83]=d0wn-sg-ns1
providerlist[84]=d0wn-sg-ns1-ipv6
providerlist[85]=d0wn-sg-ns2
providerlist[86]=d0wn-sg-ns2-ipv6
providerlist[87]=d0wn-tz-ns1
providerlist[88]=d0wn-tz-ns1-ipv6
providerlist[89]=d0wn-us-ns1
providerlist[90]=d0wn-us-ns2
providerlist[91]=d0wn-us-ns4
providerlist[92]=d0wn-za-ns1
providerlist[93]=dnscrypt.eu-dk
providerlist[94]=dnscrypt.eu-dk-ipv6
providerlist[95]=dnscrypt.eu-nl
providerlist[96]=dnscrypt.eu-nl-ipv6
providerlist[97]=dnscrypt.nl-ns0
providerlist[98]=dnscrypt.nl-ns0-ipv6
providerlist[99]=dnscrypt.org-fr
providerlist[100]=freetsa.org
providerlist[101]=fvz-anyone
providerlist[102]=fvz-anyone-ipv6
providerlist[103]=fvz-anytwo
providerlist[104]=fvz-anytwo-ipv6
providerlist[105]=ipredator
providerlist[106]=ns0.dnscrypt.is
providerlist[107]=nxd.ist
providerlist[108]=okturtles
providerlist[109]=opennic-tumabox
providerlist[110]=opennic-tumabox-ipv6
providerlist[111]=ovpnse
providerlist[112]=soltysiak
providerlist[113]=soltysiak-ipv6
providerlist[114]=ventricle.us
providerlist[115]=yandex


#Random variable
RANDOM=$$$(date +%s)

selectedprovider=${providerlist[$RANDOM % ${#providerlist[@]} ]}

#Get it setup right here.
dnscrypt-proxy --daemonize --user=dnscrypt -R  $selectedprovider

exit 0