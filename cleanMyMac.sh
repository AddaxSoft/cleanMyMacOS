#!/bin/sh

echo '[+] Please use this under your own responisablitiy.'
echo '[+] Hit [ENTRE] to contiune or CTRL+C to exit.'

read -e

#kill process
kill -9 `ps aux | grep -i 'VSearch' | grep -iv 'grep' | head -2 | tail -1 | awk '{print $2}'`

#remove all files and traces

rm -rf /Library/Application Support/VSearch
rm -rf /Library/LaunchAgents/com.vsearch.agent.plist
rm -rf /Library/LaunchDaemons/com.vsearch.daemon.plist
rm -rf /Library/LaunchDaemons/com.vsearch.helper.plist
rm -rf /Library/LaunchDaemons/Jack.plist
rm -rf /System/Library/Frameworks/VSearch.framework

echo '\n\n[+] All done!'
echo '[+] Questions? Want to say thank you? - Tweet me @i4AK!'
