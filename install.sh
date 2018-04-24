#!/bin/sh
##################################################################
# BlockIPSet 0.3 by level6 of LIE
##################################################################

echo "Installing BlockIPSet ..."
/bin/chmod 755 BlockIPSet
/bin/chmod 755 BuildIPList
/bin/chmod 755 AddIpsetToIptables
/bin/chmod 755 RemoveIpsetFromIptables
/bin/mkdir -p /usr/local/BlockIPSet/

/bin/cp -a . /usr/local/BlockIPSet/

echo "Done!"
echo "  Remember to edit /usr/local/BlockIPSet/BlockIPSet and /usr/local/BlockIPSet/AddIpsetToIptables to customize your BlockIPSet"
echo "  To run it:  /usr/local/BlockIPSet/BlockIPSet"
echo "  See the webpage for other instructions (making it run upon boot, etc.):"
echo "    https://github.com/lleevveell66/BlockIPSet"

exit 0

