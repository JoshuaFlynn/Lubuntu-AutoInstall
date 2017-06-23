#Because of firefox security protocols, it's difficult to automate plugin installation
#So instead, we open up a slew of pages related to browser security the user might be interested in looking at or tinkering with

echo "Firefox configuration helper."

#We execute all the pages we need in one lump, as this allows a single firefox instance to open all of them, saving resources
#We spin off into a separate terminal instance so it doesn't clog up script processing
(xterm -e firefox 'https://noscript.net' 'about:config' 'about:preferences#privacy' 'about:preferences#search' 'about:preferences#security' 'about:preferences#advanced')&


#Contain only a small amount of privacy related controls/features

echo ""
echo "For about:config"
echo ""
echo "Search for xpinstall.signatures.required, and set to false. This will allow us to install the most up-to-date versions of uBlock Origin later on"

echo ""
echo "For Preferences, Privacy:"
echo ""
echo "Click on manage your Do Not Track settings, and enable Do Not Track"
echo "Recommended to use custom settings, clear history on close, disable search and form history, and configure cookie settings to your preferences."
echo "Also, untick history, bookmarks and open tabs for Location Bar suggestions."


echo ""
echo "For Preferences, Search:"
echo ""
echo "Disable 'provide search suggestions. No third party snooping for you!"
echo "Remove all one click search engines except DuckDuckGo and, optionally, Wikipedia. Both are opposed to tracking. You can remove all if you prefer."

echo ""
echo "For Preferences, Security:"
echo ""
echo "It's advisible to disable remembering logins for sites."

echo ""
echo "For loaded plugin pages:"
echo ""

echo "NoScript can prevent cross-site scripting attacks, but is considered advanced. It will impede website loading unless each page is configured correctly for maximum security. If this is too inconvenient, you can disable it's protective features by enabling script globally (it will still protect against cross-site scripting attacks, but it will not prevent local malicious scripts, trackers etc from loading in this state)."
echo ""

echo ""
echo "Decentraleyes blocks new forms of stealth tracking by hosting content locally rather than caching from remote servers that track you."
echo ""
echo "uBlock Origin blocks adverts, and by direct consequence, their trackers."
echo ""
echo "User Agent Spoofer allows you to disguise what browser or OS you're using. Has advanced settings. Can break page functionality when in operation. Can be easily toggled on or off."
echo ""
echo "HTTPS everywhere forces websites that have HTTPS available, to use it, otherwise it defaults to plain text HTTP."
echo ""
echo "UnPlug allows you to download media on a webpage to your machine locally, allowing you to view it entirely (or at lower resolutions) without having to put up with buffering or bad streaming."
