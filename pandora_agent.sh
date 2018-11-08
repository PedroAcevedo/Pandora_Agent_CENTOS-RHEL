#!/bin/bash
# Init
FILE="/tmp/out.$$"
GREP="/bin/grep"
# Make sure only root can run the script
if [ "$(id -u)" != "0" ]; then
   echo "This script must be run as root" 1>&2
   exit 1
fi
echo "---------------------Pedro Acevedo The ScriptingMan----------------------------"
#download pandora agent for CentOS/RHEL
wget -O pandorafms_agent_unix-7.0NG.728-1.noarch.rpm https://sourceforge.net/projects/pandora/files/Pandora%20FMS%207.0NG/728/RHEL_CentOS/pandorafms_agent_unix-7.0NG.728-1.noarch.rpm/download -P .
#intall ignoring dependencies
yum install pandorafms_agent_unix-7.0NG.728-1.noarch.rpm -y
#replace localhost for the server ip
sed -i "s/localhost/$1/" /etc/pandora/pandora_agent.conf
#initialize the service
echo -ne "[                                                                     ]\r"
sleep 1
echo -ne "[==                                                                   ]\r"
sleep 1
echo -ne "[====                                                                 ]\r"
sleep 1
echo -ne "[=======                                                              ]\r"
echo -ne "[===========                                                          ]\r"
echo -ne "[=================                                                    ]\r"
echo -ne "[=======================                                              ]\r"
echo -ne "[============================                                         ]\r"
sleep 1
echo -ne "[===================================                                  ]\r"
sleep 1
echo -ne "[===========================================                          ]\r"
echo -ne "[================================================                     ]\r"
echo -ne "[===================================================                  ]\r"
echo -ne "[========================================================             ]\r"
sleep 1
echo -ne "[==========================================================           ]\r"
sleep 1
echo -ne "[=============================================================        ]\r"
echo -ne "[================================================================     ]\r"
echo -ne "[==================================================================   ]\r"
sleep 1
echo -ne "[===================================================================  ]\r"
sleep 2
echo -ne "[=====================================================================]\r"
echo -ne '\n'
/etc/init.d/pandora_agent_daemon restart
echo "---------------------------End----------------------------------------"
