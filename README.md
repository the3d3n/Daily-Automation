# Daily-Automation
BASIC AUTOMATION SCRIPTS TO LEARN PYTHON AND BASH SCRIPTING

I Add daily used simple automation scripts in this repo for easy use

## 1. masscan_nmap.sh:
is a simple script that runs masscan to find open ports and then runs nmap scan on those ports, because that is the process I found to be the fastest in terms of getting the most information.
In this script I have pulled a docker image because the current version never stops the wait time without human intervention
```
sudo docker pull adarnimrod/masscan 
```
execute the above command before running the script
