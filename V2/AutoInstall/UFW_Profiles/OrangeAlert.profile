[fwBasic]
status = enabled
incoming = deny
outgoing = deny

[Rule0]
ufw_rule = 445 DENY IN Anywhere
description = Anti-Samba WannaCry Exploit
command = ufw deny in 445
policy = deny
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 445
iface = 
logging = 

[Rule1]
ufw_rule = 445 DENY OUT Anywhere (out)
description = Anti-Samba WannaCry Exploit
command = ufw deny out 445
policy = deny
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 445
iface = 
logging = 

[Rule2]
ufw_rule = 9001 ALLOW OUT Anywhere (out)
description = Tor
command = ufw allow out 9001
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9001
iface = 
logging = 

[Rule3]
ufw_rule = 443 ALLOW OUT Anywhere (out)
description = HTTPS
command = ufw allow out 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443
iface = 
logging = 

[Rule4]
ufw_rule = 80 ALLOW OUT Anywhere (out)
description = HTTP
command = ufw allow out 80
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 80
iface = 
logging = 

[Rule5]
ufw_rule = 445 (v6) DENY IN Anywhere (v6)
description = Anti-Samba WannaCry Exploit
command = ufw deny in 445
policy = deny
direction = in
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 445
iface = 
logging = 

[Rule6]
ufw_rule = 445 (v6) DENY OUT Anywhere (v6) (out)
description = Anti-Samba WannaCry Exploit
command = ufw deny out 445
policy = deny
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 445
iface = 
logging = 

[Rule7]
ufw_rule = 9001 (v6) ALLOW OUT Anywhere (v6) (out)
description = Tor
command = ufw allow out 9001
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 9001
iface = 
logging = 

[Rule8]
ufw_rule = 443 (v6) ALLOW OUT Anywhere (v6) (out)
description = HTTPS
command = ufw allow out 443
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 443
iface = 
logging = 

[Rule9]
ufw_rule = 80 (v6) ALLOW OUT Anywhere (v6) (out)
description = HTTP
command = ufw allow out 80
policy = allow
direction = out
protocol = 
from_ip = 
from_port = 
to_ip = 
to_port = 80
iface = 
logging = 

