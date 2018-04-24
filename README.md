BlockIPSet v0.3 by level6 of LIE
- - - - - - - - - - - - - - - - -

What is this?

This is just a little trick I am sharing that has come in very handy for automatically and dynamically blocking attacking IP 
addresses from my various hosts.  All this does is create an iptables rule in your INPUT chain that includes an ipset hash.  
Then, you are free to fill that ipset hash with whatever you like, automatically.  My BuildIPList script is provided as an 
example for you, but it only grabs all tor exit nodes which can currently reach our IRC server.  Make any IP list you like. 
The whole point is that this list can be changed any time (say, scraped from system logs every hour) and automated via cron.

Installation:

 - yum install ipset (or, your distribution's equivalent)
 - chmod 755 install.sh
 - ./install.sh

 - Edit /usr/local/BuildIPSet/BuildIPList, making sure the output file is 'ips2block.txt'
 - Edit /usr/local/BuildIPSet/AddIpsetToIptables to match your firewall rules... sometimes it's something other than the INPUT chain of CentOS.
 - Run /usr/local/BuildIPSet/BlockIPSet once, then run the initial iptables script (/usr/local/BuildIPSet/AddIpsetToIptables) to add the ipset rule.
 - Cron this thang

There are many ways to gleem lists of IPs from your logs, or download them online... I am not going to include those, here.  I will
include a word of warning, however - using this tactic in the "wrong way" could be used against you.  If you scrape IPs attacking your
website, for example, and automate the blocking of those IPs, then all someone has to do is spoof an attempt from your own IP or your 
gateway's IP, and you will end up blocking yourself.  

It wouldn't be the end of the world, though.  Simply remove the ipset rule from your iptables, and you're back to being open.  I have
included a script called RemoveIpsetFromIptables to do that.  Just make sure to edit it in the same was as AddIpsetToIptables, first.



Still, I take no responsibility for how you use this little trick, nor any outcome or lack of outcome.
