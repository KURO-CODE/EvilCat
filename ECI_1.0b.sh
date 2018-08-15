#!/bin/bash

# EvilCat Installer V 1.0b
# Date: 05/02/2017
# Dev: Shell
# Auteurs: KURO/Z0MB13.D00L

#### Configuration ################################################################################

#### Colors ######

blanc="\033[1;37m"
gris="\033[0;37m"
rouge="\033[1;31m"
vert="\033[1;32m"
jaune="\033[1;33m"
Cyan="\033[0;36m"
normal="\e[0m"
invi="\033[8m"

#### COM ##########################################################################

PROG="$rouge""E$blanc""V$gris""il$blanc""C$gris""a$blanc""T IN$gris""sta$blanc""L$gris""le$blanc""R"

BB="$rouge""K$gris""U$blanc""R$gris""O"

ZDOLL="$rouge""Z$gris""om$blanc""BI$gris""e $blanc""D$gris""o$blanc""L$gris""l"

ENT="$rouge""E$gris""nte$blanc""R"

EXIT="$rouge""S$blanc""O$gris""ti$blanc""R"

BACK="$rouge 0.[$blanc""RE""$gris""to$blanc""U$gris""r$rouge""]"

info="$rouge""I$gris""nf$blanc""O"

inst="$rouge""I$gris""nst$blanc""A$gris""l$blanc""L"

nar=" $rouge""C$blanc""Hoi$""$gris""i$blanc""S$gris""se$blanc""Z uNe o$rouge""P$blanc""T$gris""io$blanc""N "

nar2=" $rouge""C$blanc""Hoi$""$gris""i$blanc""S$gris""se$blanc""Z uN o$rouge""UT$blanc""I$gris""l$blanc"

GO="$blanc LA$gris""n$rouge""C$gris""em$blanc""ME$gris""nt d$blanc""E$gris"" l'in$blanc$""T$gris""a$blanc""L$gris""lat$blanc""IO$gris""n"

WARNING="$rouge /$jaune""!$rouge\ $blanc""W$gris""a$blanc""RN$gris""in$blanc""G$rouge /$jaune!$rouge\ "

function TEXT {

	echo -e "

$blanc   *$rouge E$gris""vilCat est un projet destiné au Raspberry Pi.
     Orienté sécurité, hacking...

$rouge     E$gris""vilCat installer a pour objectif de faciliter l'installation
     d'outils connu comme Nmap, Sqlmap, Wireshark, Wifite, Setoolkit... afin de
	   mettre en place un dispositif pouvant être utilisé pour du WarDriving et plus encore.
"

}


####### COM FIN ###################################################################

function LIST0 {

	echo -e "

     $rouge""[1]$blanc""App.Web          $rouge""[2]$blanc""Scan/analyse
    ============        =================

     $rouge""[3]$blanc""Attaques MDP    $rouge"" [4]$blanc""Renifleur/usurpation
    =================   =========================

     $rouge""[5]$blanc""Wifi$rouge""	         [6]$blanc""$blanc""Social.Engineering
    =========	        =======================
"

}

function LIST {

	echo -e "
      $blanc""App.Web		  $blanc""Scan/analyse
    ===========         ================
    $gris"".Sqlmap	        $gris"".Nmap
    $gris"".Httrack	        $gris"".Wirshark

      $blanc""Attaques MDP        $blanc""Renifleur/usurpation
    ================    ========================
    $gris"".John	        $gris"".Driftnet

      $blanc""Wifi                $blanc""Social.Engineering
    ========	        ======================
    $gris"".Bully	        .Setoolkit$rouge X  
    $gris"".Wifite
    $gris"".Reaver
    $gris"".Fluxion$rouge X
    $gris"".Aircrack-ng   
    $gris"".MDK3

"

}

###### LOGO ##############################################################################

function LOGORPI {

		
	echo
	sleep 1
	echo -e "$vert	.~~.   .~~."
	sleep 0.1
	echo -e "       '. \ ' ' / .' "
	sleep 0.1
	echo -e "$rouge	.~ .~~~..~. "
	sleep 0.1
	echo -e "       : .~.'~'.~. : "
	sleep 0.1
	echo -e "      ~ (   ) (   ) ~ "
	sleep 0.1
	echo -e "     ( : '~'.~.'~' : )  "
	sleep 0.1
	echo -e "      ~ .~ (   ) ~. ~ "
	sleep 0.1
	echo -e "       (  : '~' :  ) "
	sleep 0.1
	echo -e "        '~ .~~~. ~' "
	sleep 0.1
	echo -e "            '~' "
	sleep 0.4
	echo -e "$rouge""	R$blanc""aspberry Pi"
	sleep 1
	echo -e "
    $rouge""E$blanc""V$gris""i$blanc""L"
	sleep 0.1
	echo -e "        $rouge""C$gris""a$blanc""T$rouge P$gris""ro$blanc""J$gris""ec$blanc""T"	
	sleep 0.2
	echo -e "$rouge	     H$gris""ac$blanc""K$gris""e$blanc""R"
	sleep 0.2
	echo -e "$rouge 	      P$blanc""A$gris""c$blanc""K"
	sleep 0.2
	echo -e "$rouge	       I$gris""ns$blanc""T$gris""a$blanc""LL$gris""atio$blanc""N"
	


}

function WARNG {

	clear
	LOGOEVIL	
	echo
	echo
	sleep 1
	echo -e "$normal$vert	.~~.   .~~."
	echo -e "       '. \ ' ' / .' "
	echo -e "$rouge	.~ .~~~..~. "
	echo -e "       : .~.'~'.~. : "
	echo -e "      ~ (   ) (   ) ~ "
	echo -e "     ( : '~'.~.'~' : )  "
	echo -e "      ~ .~ (   ) ~. ~ "
	echo -e "       (  : '~' :  ) "
	echo -e "        '~ .~~~. ~' "
	echo -e "            '~' "
	sleep 2
	echo
	echo -e "     $WARNING
    $blanc""===================
			"
	sleep 1
	echo -e "$vert E$jaune""vilCat installer est susceptible d'installer des outils déjà présents sur votre machine.
$vert C$jaune""onsultez la liste."
	echo -e "

	$blanc""[$rouge""O$blanc]$gris""u$blanc""I	[$rouge""N$blanc]O$gris""n"	
	
	read i
	case $i in
	o)FULL;;
	n)MENU2;;
	*) echo -e "$normal$blanc [$rouge ERREUR$blanc ] Oui=$vert o$blanc Non=$rouge n " && sleep 3

	esac 
WARNG

}


function LOGOCAT {

		
	echo -e "	                                                                 
       $blanc                 
       $jaune      *$vert    .~~.   .~~. $jaune           *
       $vert          '. \ ' ' / .' $jaune   .
       $rouge           .~ .~~~..~.
  $jaune   *$rouge           : .~.'~'.~. :
                ~ (   ) (   ) ~
               ( : '~'.~.'~' : ) $COM1
        $rouge        ~ .~ (   ) ~. ~ $jaune   *
	$rouge	 (  : '~' :  ) $COM2
	$rouge	  '~ .~~~. ~' $COM3
	$rouge	      '~'		
        $blanc  |\___/|
          )     (         $jaune    . $blanc             
         =\     /=
           )===(   $jaune    *$blanc
          /     \\    
	  |     |  
         /       \\ 			                
	 \       / 	
  _/\_/\_/\__  _/_/\_/\_/\_/\_/\_/\_/\_/\_/\_
  |  |  |  |( (  |  |  |  |  |  |  |  |  |  |
  |  |  |  | ) ) | °|  |  |  |  |  |  |  |  |
  | o|  |  |(_(  |  |  |  |  |  |  |  |°o|  |     
  |  |  |  |  |  |  |  |  | °|  |  |  |  |  | 
"
	sleep 2
	echo -e "  $PROG$blanc v.$gris""1.0b$vert By $BB$vert & $ZDOLL$blanc 2$gris""01$blanc""7"	
	
}

function LOGOEVIL {

	clear
	sleep 0.1 
	echo -e "$normal  
$rouge      dMMMMMP$blanc dMP dMP dMP dMP    .aMMMb  .aMMMb dMMMMMMP 
$rouge     dMP    $blanc dMP dMP amr dMP    dMP VMP dMP dMP   dMP    
$rouge    dMMMP  $blanc dMP dMP dMP dMP    dMP     dMMMMMP   dMP     
$rouge   dMP     $blanc YMvAP  dMP dMP    dMP.aMP dMP dMP   dMP      
$rouge  dMMMMMP  $blanc  VP   dMP dMMMMMP VMMMP  dMP dMP   dMP 
=================== $PROG$blanc =================="
	sleep 0.5
	

}

###### LOGO FIN ##########################################################################



###### INTRO ##############################################################################

function INTRO {

	clear
	LOGORPI
	sleep 2
	clear
	LOGOCAT
	sleep 3
	clear
	MENU1	

}

###### INTRO FIN ##########################################################################

###### MENU 1 ############################################################################

function MENU1 {

	clear
	LOGOEVIL
	sleep 1
	TEXT
	
	echo -e "
	$blanc =======      =======
	| $ENT |    | $EXIT |
	 =======      ======="
	 read i
	 case $i in
 	      e)MENU2;;
	      s)EXITMENU;;
	      *) echo -e "$blanc [$rouge ERREUR$blanc ] Enter=$vert e$blanc Exit=$rouge s " && sleep 3
	esac
	
	MENU1
	 

} 



##### MENU 1 FIN #########################################################################

###### MENU 2 ############################################################################

function MEN2 {

	LOGOEVIL
	echo -e "$normal
	       $blanc$nar

	$blanc[$rouge""I$blanc]$gris""n$blanc""F$gris""o
	$blanc[$rouge""M$blanc]$gris""a$blanc""N$gris""u$blanc""A$gris""l$blanc IN$gris""st$blanc""ALL$gris""ati$blanc""O$gris""n
	$blanc[$rouge""F$blanc]$gris""u$blanc""LL IN$gris""s$blanc""TA$gris""l$blanc""LAT$gris""io$blanc""N
	$blanc[$rouge""T$blanc]$gris""$blanc""o$gris""ol$blanc""S L$gris""i$blanc""ST
	$blanc"" E[$rouge""X$blanc]$gris""i$blanc""T
"

}


function MENU2 {

	clear
	MEN2
	echo
	read i
	   case $i in
		f)WARNG;;
		i)INFO;;
		m)MANUAL;;
		t)TLIST;; 
		x)EXITMENU;;
		*) echo -e "$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
MENU2
} 

##### MENU 2 FIN #########################################################################

function TLIST {

	clear
	LOGOEVIL
	sleep 2
	LIST
	sleep 0.5 
	echo -e " Faire$rouge [ENTREE]"
	read pause
MENU2

}

##### INFO #########################################################################
function INFO {

	clear

	echo

	LOGOEVIL
	echo

	echo -e "$vert	.~~.   .~~."
	sleep 0.2
	echo -e "       '. \ ' ' / .' "
	sleep 0.2
	echo -e "$rouge	.~ .~~~$vert""Nom:$blanc......EvilCat Installer"
	sleep 0.2
	echo -e "$rouge       : .~.'~.$vert""Version:$blanc..1.0 Beta"
	sleep 0.2
	echo -e "$rouge      ~ (   ) ~$vert""Langue:$blanc.........[FR]"
	sleep 0.2
	echo -e "$rouge     ( : '~'.~.$vert""Date:$blanc.....05/02/2017"
	sleep 0.2
	echo -e "$rouge      ~ .~ (   $vert""Auteurs:$blanc...KURO & Z0MB13.D0LL"
	sleep 0.2
	echo -e "$rouge       (  : '~'$vert""Type:$blanc.....Installeur de paquets"
	sleep 0.2
	echo -e "$rouge        '~ .~~~$vert""Dev:$blanc......Shell "
	echo -e "$rouge            '~' $blanc"
	echo
	sleep 0.5 
	echo -e " Faire$rouge [ENTREE]"
	read pause
}

##### INFO FIN #########################################################################

##### INSTALL #########################################################################

#==== FULL installation ==========

function FULL {


	clear
	LOGOEVIL
	echo -e "
	    $GO"
	sleep 1
	echo -e "$vert Vnc$gris"
	sudo apt-get install tightvncserver
	clear
	echo -e "$vert Apache$gris"
	sudo apt-get install apache2 -y
	clear
	echo -e "$vert Nmap$gris"
	sudo apt-get update
	sudo apt-get install nmap -y
	clear
	echo -e "$vert Aircrack-ng$gris"
	sudo apt-get install aircrack-ng
	clear
	echo -e "$vert SQLmap$gris"
	sudo git clone https://github.com/sqlmapproject/sqlmap.git > sudo sqlmap
	sudo cp -r sqlmap -T /usr/bin/
	sudo rm -Rf sqlmap
	clear
	echo -e "$vert Mdk3$gris"
	sudo wget http://ftp.tku.edu.tw/kali/pool/main/m/mdk3/mdk3_6.0-4_i386.deb &&
	sudo dpkg -i mdk3_6.0-4_i386.deb
	clear
	echo -e "$vert Wifite$gris"
	sudo apt-get install wifite -y
	clear
	echo -e "$vert Wireshark$gris"
	sudo apt-get install wireshark -y
	clear
	echo -e "$vert Httrack$gris"
	sudo apt-get install httrack -y
	clear
	#sudo dpkg --configure -a
	echo -e "$vert Nikto$gris"
	sudo apt-get install nikto -y
	clear
	echo -e "$vert John the ripper$gris"
	sudo apt-get install john -y
	clear
	echo -e "$vert Reaver$gris"
	sudo apt-get install reaver -y
	clear
	echo -e "$vert Crunch$gris"
	sudo apt-get install crunch
	clear
	echo -e "$vert Macchanger$gris"
	sudo apt-get install macchanger 
	clear
	echo -e "$vert Driftnet$gris"
	sudo apt-get install driftnet
	clear
	echo -e "$rouge Setoolkit INACTIF$gris"
    sleep 2
	echo -e "$vert Bully$gris"
	sudo git clone https://github.com/aanarchyy/bully.git
	sudo apt-get install -y libpcap-dev libssl-dev
	cd bully*/
	cd src/
	make
	sudo make install
	

	sleep 10
	

}

#==== FULL installation FIN ===========

#==== Menu Manual ============

function MANUAL {

	clear
	$normal
	LOGOEVIL
	sleep 2
	LIST0
	echo -e "	$BACK"
	echo
	echo -e "$nar"
	read i
	case $i in
		1)WAPP;;
		2)SCAN;;
		3)AMDP;;
		4)SNIFF;;
		5)WIFI;;
		6)SE;;
		0)MENU2;;
		*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}




WAPP(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""App.Web
    ===========
    $blanc""1.$gris""Sqlmap
    $blanc""2.$gris""Httrack
	$BACK

  $nar"
  read i
	case $i in
	1)Sqlmap;;
	2)Httrack;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}

function Sqlmap {

	sudo git clone https://github.com/sqlmapproject/sqlmap.git > sudo sqlmap
	sudo cp -r sqlmap -T /usr/bin/
	sudo rm -Rf sqlmap

MANUAL
}


function Httrack {

	sudo apt-get install httrack -y &&

MANUAL
}

SCAN(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""Scan/analyse
    ================
    1.$gris""Nmap
    $blanc""2.$gris""Wireshark
	$BACK

  $nar"
  read i
	case $i in
	1)Nmap;;
	2)Wireshark;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}

function Nmap {

	sudo apt-get install nmap -y

MANUAL
}


function Wireshark {

	sudo apt-get install wireshark -y 

MANUAL
}

AMDP(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""Attaques MDP
    ================
    1.$gris""John
	$BACK

  $nar"
  read i
	case $i in
	1)John;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}

function John {

	sudo apt-get install john -y 

MANUAL
}

SNIFF(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""Renifleur/usurpation
    ========================
    1.$gris""Driftnet
	$BACK

  $nar"
  read i
	case $i in
	1)drift;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}

function drift {

	sudo apt-get install driftnet &&

MANUAL
}


WIFI(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""Wifi
    ========
    1.$gris""Bully
    $blanc""2.$gris""Wifite
    $blanc""3.$gris""Reaver
    $blanc""4.$gris""Fluxion
    $blanc""5.$gris""Aircrack-ng
    $blanc""6.$gris""MDK3
	$BACK

  $nar"
  read i
	case $i in
	1)Bully;;
	2)Wifite;;
	3)Reaver;;
	4)Fluxion;;
	5)Aircrack;;
	6)MDK3;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
MANUAL
}


function Bully {

	sudo git clone https://github.com/aanarchyy/bully.git
	sleep 1
	sudo apt-get install -y libpcap-dev
	sudo apt-get install -y lidssl-dev
	sudo apt-get update
	sleep 1
	cd bully*/
	cd src/
	make
	sudo make install

MANUAL
}


function Wifite {

	sudo apt-get install wifite -y &&

MANUAL
}


function Reaver {

	sudo apt-get install reaver -y &&

MANUAL
}


function Fluxion {

	sudo git clone https://github.com/TTN2016/fluxion.git	

MANUAL
}


function Aircrack {

	sudo apt-get install aircrack-ng -y &&

MANUAL
}


function MDK3 {

	sudo wget http://ftp.tku.edu.tw/kali/pool/main/m/mdk3/mdk3_6.0-4_i386.deb &&
	sudo dpkg -i mdk3_6.0-4_i386.deb
    
        
MANUAL
}


SE(){

	clear
	LOGOEVIL
	sleep 1
	echo -e "
      $blanc""App.Web
    ===========
    1.$gris""Setoolkit$rouge X
	$BACK

  $nar"
  read i
	case $i in
	1)SETOOLKIT;;
	0)MANUAL;;
	*) echo -e "$normal$Blanc [$rouge ERREUR$blanc ]" && sleep 3
	esac
	
}

function SETOOLKIT {

	echo -e "$rouge Setoolkit inactif$normal"
	

MANUAL
}


#==== Menu manual FIN ====




##### INSTALL FIN #########################################################################

##### FERMETURE DU PROGRAMME ###############################################################

function EXITMENU {

	clear
	echo
	LOGOEVIL
	echo -e "$blanc Fermeture du programme..."
	sleep 2
	echo
	sleep 0.5
	echo
	echo -e " [$rouge*$blanc] $vert Merci d'avoir utilisé$rouge $PROG [$rouge*$blanc]"
	sleep 3
	clear
	exit 0
}



###### FIN (END) #######################################################################
########################################################################################
INTRO

