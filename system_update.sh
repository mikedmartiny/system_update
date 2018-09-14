{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;\f1\fnil\fcharset0 Menlo-Bold;}
{\colortbl;\red255\green255\blue255;\red46\green174\blue187;\red255\green255\blue255;\red0\green0\blue0;
\red47\green180\blue29;\red159\green160\blue28;\red64\green11\blue217;}
{\*\expandedcolortbl;;\cssrgb\c20196\c73240\c78250;\csgray\c100000;\csgray\c0;
\cssrgb\c20238\c73898\c14947;\cssrgb\c68468\c68012\c14208;\cssrgb\c32308\c18668\c88227;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs22 \cf2 \cb3 \CocoaLigature0 #!/bin/bash\cf4 \
\
GREEN\cf5 =
\f1\b \cf6 "\\033[1;32m"
\f0\b0 \cf4 \
NOCOLOR\cf5 =
\f1\b \cf6 "\\033[0m"
\f0\b0 \cf4 \
YELLOW\cf5 =
\f1\b \cf6 '\\e[0;33m'
\f0\b0 \cf4 \
RED\cf5 =
\f1\b \cf6 '\\e[1;31m'
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 1: $\{GREEN\}Pre-configuring packages$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo dpkg --configure -a\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 1 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 2: $\{GREEN\}Fix and attempt to correct a system with broken dependencies$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo apt-get 
\f1\b \cf7 install
\f0\b0 \cf4  \cf5 -f\cf4 \

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 2 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 3: $\{GREEN\}Update apt cache$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo apt-get update\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 3 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 4: $\{GREEN\}Upgrade packages$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo apt-get upgrade\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 4 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 5: $\{GREEN\}Distribution upgrade$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo apt-get dist-upgrade\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 5 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 6: $\{GREEN\}Remove unused packages$\{NOCOLOR\}"
\f0\b0 \cf4 \
sudo apt-get --purge autoremove\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 6 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "Step 7: $\{GREEN\}Clean up$\{NOCOLOR\}"
\f0\b0 \cf4 \
        sudo apt-get autoclean\

\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{YELLOW\}Step 7 completed......$\{NOCOLOR\}"
\f0\b0 \cf4 \
\

\f1\b \cf7 echo
\f0\b0 \cf4 \
\
\cf5 if\cf4  \cf5 [\cf4  \cf5 -f\cf4  /var/run/reboot-required \cf5 ];\cf4  \cf5 then\cf4 \
        
\f1\b \cf7 echo
\f0\b0 \cf4  \cf5 -e\cf4  
\f1\b \cf6 "$\{RED\}REBOOT REQUIRED!$\{NOCOLOR\}"
\f0\b0 \cf4 \
        sudo reboot\
\cf5 fi\cf4 \
}