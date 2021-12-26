#!/bin/bash
cd ~/ && sudo mkdir workspace && cd ~/workspace
sudo apt-get install -y git && git clone https://arpitjain1996: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@github.com/arpitjain1996/WP.git
cd ~/workspace/WP && sudo bash start.sh
#===========================================================================================================
# Will install WordPress in instance.
sudo bash wordpress.sh
#===========================================================================================================
sudo bash end.sh

# NOTE: COPY THE WHOLE SCRIPT CREATE script.sh file IN SERVER THEN EXECUTE!
# sudo bash script.sh
