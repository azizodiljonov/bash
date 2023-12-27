#!/bin/bash

echo "What do you want to do?"
echo "1 : Add user!"
echo "2 : Delete user!"

echo "Choose one option: "; read ask

if [[ $ask -eq 1 ]]; then
    read -p "Write the name of user: " username
    read -s -p "Create password for username: " password
    #creating user
    sudo useradd -m -s /bin/bash $username

    echo "$username:$password" | sudo chpasswd

    echo "User '$username' has been created with password '$password'"
    read -p "Do you want to add user to sudo group? (y/n): " sudoadd
        if [[ $sudoadd -eq "y" ]]; then
            sudo usermod -aG sudo $username
            echo "User '$username' has been added to 'sudo' group!"
        elif [[ $sudoadd -ne "y"]]; then
            echo "Done!"
            exit 1
elif
    if [[ $ask -eq 2 ]]; then
    read -p "Write the name of user: " username
    
    #deleting user
    sudo deluser $username
    echo "User '$username' has been deleted!"
    else
        exit 1
    fi    

fi
