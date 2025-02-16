#!/bin/bash

# This is the Week 3 Shell Scripting assignment.

create_user(){

             echo "Creating the User"
             read -p "Enter the Username:" username
             count=$( cat /etc/passwd | grep $username | wc -l )
if [ "$count" -gt 0 ]; then
             echo "$username exist"
#if id "$username" then
#       echo "$username exists"
else
        sudo useradd "$username"

        echo "$username created."

fi
}

#Delete user

delete_user(){
        read -p "Enter the Username:" username
        count=$( cat /etc/passwd | grep $username | wc -l )
        if [ "$count" -gt 0 ]; then
                sudo userdel "$username"
                echo "$username deleted"                                                                                                                                                                                   else                                                                                                                                                                                                                       echo "$username not exist"
        fi
}

#Reset password

reset_password(){
        read -p "Enter the Username:" username
        count=$( cat /etc/passwd | grep $username | wc -l )
        if [ "$count" -gt 0 ]; then
                read -sp "Enter a new password for user $username:" passwd
                echo "$username:$(openssl passwd -1 "$password")" |sudo chpasswd
                echo
                echo "Password updated successfully"
        else
                echo "$username not exist"
        fi
}
# Function to list all the users

list_users(){
        cat /etc/passwd | awk -F':' '{ print $1}'

}

help(){
        echo -e "Enter -c or --create to Create a new User \n Enter -d or --delete to Delete the User \n Enter -r or --reset to Reset the password \n Enter -l or --list to Display the Users."

}


while true; do
        help
        read -p "Enter choice" choice
        case $choice in

                -c | --create)
        create_user;;

        -d | --delete)
                delete_user;;

        -r | --reset)

        reset_password;;

-l | --list)

        list_users;;

-h | --help)

                help;;
esac
done
