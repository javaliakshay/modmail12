# Prerequesites
 
 * [Python 3.7](https://www.python.org/downloads/release/python-373/)
 
 # How To Run?
 
 * Upload the script attached to your vps with its name as `modmail.sh`.
 * Run `chmod +x ./modmail.sh`
 * Then run `sudo ./modmail.sh` (Ignore sudo if logged in as a root user)
 * After the script has been completed successfully, just run `pipenv run python3 modmail/bot.py` and `pipenv run python3 logviewer/app.py` to start the logviewer and the bot!
 
 # Running 24/7
 
 * Install pm2 and create a bash file
     ```sh
     #!/bin/bash
     
     pipenv run python3.7 bot.py
     ```
     


 

 # Got Issues?
 
 * Contact `Piyush#6969` on [his discord server](https://discord.gg/hWbb4Ee)