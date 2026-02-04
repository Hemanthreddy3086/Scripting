
#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

echo -e "$R Hello World $N, $Y I am learning Linux $N"
echo -e "${G}This is green text${N}"
echo -e "${Y}This is yellow text${N}"
echo -e "${R}This is red text${N}"  
echo -e "${N}This is normal text${N}"

echo -e "${G}Success Message${N}"
echo -e "${R}Error Message${N}"
echo -e "${Y}Warning Message${N}"   
echo -e "${G}Installation completed successfully${N}"
echo -e "${R}Installation failed${N}"
echo -e "${Y}Disk space running low${N}"
