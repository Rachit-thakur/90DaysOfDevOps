📌 Tasks

1️⃣ User & Group Management

* Learn about Linux users, groups, and permissions (/etc/passwd, /etc/group).

# USERS
Every person or background process that interacts with a Linux system must have a specific user account. Every account is tied to a unique numerical User ID (UID).

## cat /etc/passwd
Contains user account information.<br>
Example entry:<br>
alice:x:1001:1001:Alice:/home/alice:/bin/bash

| Field |   | Description |
   #### alice is Username
   #### x is Password placeholder
  ####  1001 is UID
   #### 1001 is GID
   #### Alice is Comment field
   #### /home/alice is Home directory
   #### /bin/bash is Login shell
