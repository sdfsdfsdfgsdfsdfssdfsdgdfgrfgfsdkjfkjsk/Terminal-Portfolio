#!/bin/bash
command=""
isActive=true
Main(){
    StartSession
}
StartSession(){
    PrintBanner
    PrintOpeningLine
    while $isActive;
    do

      AwaitCommand
    done

}
PrintBanner() {
    text="          ___
         (___)
  ____
_\___ \  |\_/|
\     \ \/ , , \ ___
 \__   \ \ =\"= //|||\\
  |===  \/____)_)|||||
  \______|    | |||||
      _/_|  | | =====
     (_/  \_)_) Will Tomorrow Rain?
  ___________________
 (       All        _)
  (__   9 Lives     )
    (__ _Gone____)
       (_'___')
________________________________
   _____   __ 
  /  _  \_/  |_  ____   _____
  /  /_\  \   __\/  _ \ /     \\
 /    |    \  | (  <_> )  Y Y  \\
 \____|__  /__|  \____/|__|_|  /
_________\/ _________________\/"

    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.01  
    done
    echo
}

# Opening Line
PrintOpeningLine(){
    sleep 0.5
    echo "For the list of available commands, type help"
}
AwaitCommand(){
    read -p "┌──(at0m㉿Rijan)-[~/Terminal]
└─$ " command
    ExecuteCommand
    
}
#Execute the command
ExecuteCommand(){
    case $command in
    "")
    ExecuteEmptyCommand
    ;;
    "help")
    HelpCommandExecuted
    ;;
    "exit")
    ExitTerminal
    ;;
    "whois")
    ExecuteWhoIsCommand
    ;;
    "whoami")
    ExecuteWhoAmICommand
    ;;
    "skills")
    ExecuteSkillsCommand
    ;;
    "social")
    ExecuteSocialCommand
    ;;
    "projects")
    ExecuteProjectsCommand
    ;;
    "clear")
    ExecuteClearCommand
    ;;
    "writeups")
    ExecuteWriteUpsCommand
    ;;
    *)
    CommandNotFound
    ;;
    esac
}
HelpCommandExecuted(){
    sleep 0.3
    echo " [*] whois          Who is Rijan? "
    echo " [*] whoami         Who are you? "
    echo " [*] skills         View skills "
    echo " [*] social         Display Social Networks "
    echo " [*] projects       View Projects "
    echo " [*] help           You obviously know what it does "
    echo " [*] clear          Clear the terminal "
    echo " [*] exit           Exit the terminal "
    echo " [*] writeups       View my Writeups "
}
ExecuteWhoIsCommand(){
   echo " =>> Hi 👋, I am Rijan Also goes by name At0m Online, Just a fellow guy who codes random stuff" 
   echo "     and does Bug Bounty hunting even though I haven't found one."
}
ExecuteWhoAmICommand(){
    echo " ==> Knock Knock! Who are you? In this paradox, We never know who we are but we
     constantly keep finding ourselves."
}
ExecuteSkillsCommand(){
echo "_______________________________________________________________________"
echo "|                                                                     |"
echo "| [*] C              | I like low level languages more than high      |"
echo "|                    | level tbh. Low level just goes on depth        |"
echo "|                    | thats why i am learning C Since we are         |"
echo "|                    | also learning about it in college i have       |"
echo "|                    | fair understanding to make smth but POINTERS   |"
echo "|                    | & Array ARGGHHH.                               |"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] Bash           | Good scripting language  you know I am         |"
echo "|                    | making this script with this language so no    |"
echo "|                    | need to tell.                                  |"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] Python         | Very Beginner friendly and versatile since i   |"
echo "|                    | knew some C, Python is/was easier than C I     |"
echo "|                    | work with it for automation and AI. Dont know  |"
echo "|                    | very advanced things but i know something.     |"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] HTML/CSS/JS    | Probably joking I know JS only literal basics  |"
echo "|                    | stuff But HTML and CSS counts Haha Now I       |"
echo "|                    | can hack NASA. Honestly I dont like web        |"
echo "|                    | development much so...                         |"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] Linux          | No need to say Been using LINUX for more than  |"
echo "|                    | year as main os and still not regreting.       |"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] Cybersecurity  | As Progessing and Learning it Doing bug        |"
echo "|                    | bounty and solving CTF and Labs in HTB Wait I  |"
echo "|                    | will learn It even more when I will master C   |"
echo "|                    | and Python. Oh learning reverse engineering too|"
echo "|_____________________________________________________________________|"
echo "|                                                                     |"
echo "| [*] AI/ML          | Just following the trends  you know AI is      |"
echo "|                    | biggest tech trend rn. Just Learning as a      |"
echo "|                    | backup career if anything doesnt work out      |"
echo "|                    | which is not to happen.                        |"
echo "|_____________________________________________________________________|"

}
ExecuteSocialCommand(){
    echo " [*] Github    |    https://github.com/At0m-txt "
    echo " [*] Discord   |    @at0mx0day "
    echo " [*] Telegram  |    t.me/@lIIIIIlIIIIIIIlIIIIlIIIIIlIIIIIl "
    echo " [*] Mail      |    at0mx0day@gmail.com"
}
ExecuteProjectsCommand(){
echo "_________________________________________________________________________________________________________________________"
echo "|                                                                                                                       |"
echo "| [*] Responsive Portfolio  Site    |  https://github.com/At0m-txt/Responsive-Portfolio-Site                            |"
echo "|_______________________________________________________________________________________________________________________|"
echo "|                                                                                                                       |"
echo "| [*] Library Management GUI        |  https://github.com/At0m-txt/Library-Management-App                               |"
echo "|_______________________________________________________________________________________________________________________|"
echo "|                                                                                                                       |"
echo "| [*] Terminal Portfolio            |  You are seeing it right now.                                                     |"
echo "|_______________________________________________________________________________________________________________________|"
echo "|                                                                                                                       |"
echo "| [*] Coming soon....               |  More cool projects will be coming soon.                                          |"
echo "|_______________________________________________________________________________________________________________________|"
}
ExecuteWriteUpsCommand(){
    echo " [*] Coming Soon..."
}
ExecuteClearCommand(){
    clear
}

ExitTerminal(){
    isActive=false
}
ExecuteEmptyCommand(){
    echo "Please enter a command. For the list of commands type help."
}
CommandNotFound(){
    echo "Command '$command' not found. For the list of commands type help"
}

Main