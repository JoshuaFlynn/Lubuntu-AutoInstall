[fwBasic]
status = enabled
incoming = deny
outgoing = allow

[Rule0]
ufw_rule = 445 DENY IN Anywhere
description = Samba
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
description = Samba
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
ufw_rule = 445 (v6) DENY IN Anywhere (v6)
description = Samba
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

[Rule3]
ufw_rule = 445 (v6) DENY OUT Anywhere (v6) (out)
description = Samba
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

