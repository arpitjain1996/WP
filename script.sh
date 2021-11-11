#!/bin/bash
cd ~/ && sudo mkdir workspace && cd ~/workspace
sudo apt-get install -y git && git clone https://Prathmesh98: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@github.com/Prathmesh98/wget-download-files.git
cd ~/workspace/wget-download-files && sudo bash start.sh
#===========================================================================================================
# Will install WordPress in instance.
sudo bash wordpress.sh
#===========================================================================================================
sudo bash end.sh

# NOTE: COPY THE WHOLE SCRIPT CREATE script.sh file IN SERVER THEN EXECUTE!
# sudo bash script.sh