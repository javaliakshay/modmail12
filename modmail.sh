#!/bin/bash

echo "Script Started"
pip3 install pipenv
echo "Installing modmail"
git clone https://github.com/kyb3r/modmail.git
echo "Done! Installing Deps"
cd modmail
pipenv install
echo "Installed Deps!"
cd ..
git clone https://github.com/kyb3r/logviewer.git
cd logviewer
echo "Cloned LogViewer, Installing deps"
pipenv install
echo "Installed Deps Of LogViewer"
cd ..
cd modmail
touch .env
echo "Enter TOKEN [Your discord bot's token.]"
read token
echo TOKEN=$token >>.env 
echo "Enter GUILD_ID [The id for the server you are hosting this bot for.]"
read gid 
echo GUILD_ID=$gid >>.env 
echo "Enter Owner ID's [Comma separated user IDs of people that are allowed to use owner only commands. (eval and update).]"
read own
echo OWNERS=$own >>.env
echo "Enter MONGO_URI [Mongo DB connection URI for self-hosting your data.]"
read uri
echo MONGO_URI=$uri >>.env
echo "Enter LOG_URL [This can be the ip and port of your vps which you will set later]"
read lu
echo LOG_URL=$lu >>.env
echo "Completed Setup for modmail, not settings for logviewer"
cd ..
cd logviewer
touch .env
echo MONGO_URI=$uri >>.env
echo "Completed Setup!"
exit 0