#!/bin/bash
#Case- Directs program flow according to conditio at top of that construct
case "$(whoami)" in
"root" )
    echo "You are Root"
    ;;
amit ) #No need to use "" if using single string
#for demo user your loged username
    echo "You are Amit"
    ;;
* ) #If conditions are not equal then block of commands represented by * will perform.
    echo "I dont know"
    ;;
esac
