📌 Tasks

1️⃣ User & Group Management

* Learn about Linux users, groups, and permissions (/etc/passwd, /etc/group).

# USERS
Every person or background process that interacts with a Linux system must have a specific user account. Every account is tied to a unique numerical User ID (UID).

## cat /etc/passwd
Contains user account information.
Example entry:
alice:x:1001:1001:Alice:/home/alice:/bin/bash

## Field	Description
   alice	        Username
   x	            Password placeholder
   1001	          UID
   1001	          GID
   Alice	        Comment field
   /home/alice	  Home directory
   /bin/bash	    Login shell
