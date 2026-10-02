# Linux Users, Groups and Permissions

A beginner-friendly guide to understanding Linux users, groups, and file permissions, including /etc/passwd and /etc/group.

# What You'll Learn

- What Linux users are

- What Linux groups are

- Understanding /etc/passwd

- Understanding /etc/group

- Reading file permissions

- Understanding r, w, and x

- Using chmod

- Using chown


#  1. Linux Users

A user is an account that can use a Linux system, and it is able to login and run processes.
Examples:

- rahul
- ram
- root

Linix doesn't track names, thats why it assigns a unique UID (User ID).

Check the current user:

```whoami```


Check user information:

```id```

##  2. /etc/passwd

This is the file that contains basic information about users.

command to view user info:

```cat /etc/passwd```


A line may look like:

`alice:x:1001:1001:Alice:/home/alice:/bin/bash`


The fields are separated by :.



| Field | Meaning |
| :--- | :--- |
| `alice` | Username |
| `x` | Password placeholder |
| `1001` | UID (User ID) |
| `1001` | GID (Group ID) |
| `Alice` | User description |
| `/home/alice` | Home directory |
| `/bin/bash` | Default shell |


## TYPES OF USERS

- **Root (Superuser):** Full system control. Can install software, change config files and delete anything. Powerful but risky.
- **Regular User:** Limited access. Can create files, run applications, but not modify system-level settings.
- **Sudo User:** Regular user with temporary admin rights via the sudo command. Common in modern systems.
- **System/Service Account:** Non-human accounts used by services (e.g., mysql, nginx). Limited privileges.
- **Guest User:** Temporary users with minimal privileges. Changes are not saved after logout. (desktop     environment specific)

#  3. Linux Groups

A group is a collection of users. If you give permission to a group, all users in that group get the same access. This makes it easier to manage file and system permissions for many users at once.

For example:

- developers
- ├── rahul
- ├── ram
- └── naresh

Groups make permission management easier.

Instead of giving permissions to every user individually, you can give permissions to a group.

##  4. /etc/group

The file contains information about Linux groups.

command to list groups:

```cat /etc/group```

Example:

developers:x:1002:alice,bob

The meaning are:


| Field | Meaning |
| :--- | :--- |
| `developers` | Group name |
| `x` | Password placeholder |
| `1002` | GID (Group ID) |
| `alice,bob` | Group members |



#  5. Linux File Permissions

File permissions are core to the security model used by Linux systems. They determine who can access files and directories on a system and how. 

Linux uses three basic permissions:


| Permission | Symbol | Meaning |
| :--- | :--- | :--- |
| Read | r | Read/view |
| Write | w | Modify |
| Execute | x | Execute/access |


Permissions are assigned to three categories:

| User | Group | Others |
| :--- | :--- | :--- |
|↓     |   ↓   |      ↓ |
|rwx   |    rw-|     r--|

This will look like this in system: `drwxr-xr-x`

- **d:** `d` is directory(file type).
- **rwx:** User can read, write and execute.
- **rw-:** Groups can only read and write.
- **r--:** Others can only read.


##  6. Check File Permissions

Use:

```ls -l```


Example:

`drwxrwxr-x  9 rachit-thakur rachit-thakur     4096 Oct  1 11:38  90DaysOfDevOp`

Here:

- Owner → rachit-thakur
- Group → rachit-thakur
- Permissions → drwxrwxr-x


##  8. Changing Permissions with chmod

Chmod is used to change file permissions.
- **+:** for add permissions.
- **-:** for removeing permissions.

Add execute permission for the owner
- ```chmod u+x <file name>```

Add write permission for the group
- ```chmod g+w <file name>```

Remove read permission from others
- ```chmod o-r <file name>```

The letters mean:

- u → user/owner
- g → group
- o → others
- a → all

##  9. Numeric Permissions

Linux also allows permissions to be represented using numbers.

- Read    = 4
- Write   = 2
- Execute = 1


For example:

- 7 = 4 + 2 + 1 = rwx
- 6 = 4 + 2     = rw-
- 5 = 4 + 1     = r-x
- 4 = 4         = r--

Example
```chmod 755 <filename>```

Means:

755

- 7 → Owner  → rwx
- 5 → Group  → r-x
- 5 → Others → r-x


## 10. Changing Ownership with chown

chown changes the owner of a file.

Example:

```sudo chown new_owner filename.txt```


Change both owner and group:

```sudo chown new_owner:new_group filename.txt```

Check the result:

```ls -l filename.txt```

👥 11. Managing Groups
Create a group
sudo groupadd developers

Add a user to a group
sudo usermod -aG developers alice

Check a user's groups
groups alice


Or:

id alice


After adding a user to a group, logging out and back in may be necessary for the new membership to apply to the current session.

🧪 12. Practice Example

Create a file:

touch example.txt


Check its permissions:

ls -l example.txt


Change its permissions:

chmod 644 example.txt


Now the permissions are:

Owner  → rw-
Group  → r--
Others → r--


In symbolic form:

-rw-r--r--

🧠 Quick Cheat Sheet
Command	Purpose
whoami	Show current user
id	Show user and group IDs
groups	Show user's groups
cat /etc/passwd	View user account information
cat /etc/group	View group information
ls -l	View file permissions
chmod	Change permissions
chown	Change owner
groupadd	Create a group
usermod -aG	Add user to a group
🔑 Key Concepts

Remember these four ideas:

User
 ↓
Who owns the file?

Group
 ↓
Which group can access the file?

Permissions
 ↓
What can they do?

Others
 ↓
What can everyone else do?


A useful way to remember Linux permissions is:

OWNER        GROUP        OTHERS
  ↓            ↓            ↓
 rwx          rwx          rwx

🚀 Practice Tasks

Try these commands yourself:

whoami
id
groups
ls -l
cat /etc/passwd
cat /etc/group


Then practice:

touch test.txt
chmod 644 test.txt
ls -l test.txt


Create a group:

sudo groupadd developers


Add your user to it:

sudo usermod -aG developers $USER


Check your groups:

groups

📌 Summary

/etc/passwd stores basic information about users.

/etc/group stores information about groups.

Every user has a UID.

Every group has a GID.

Linux permissions are based on read (r), write (w), and execute (x).

Permissions apply to owner, group, and others.

chmod changes permissions.

chown changes ownership.

Groups make it easier to manage permissions for multiple users.

📖 Useful Commands
# Current user
whoami

# User information
id

# User's groups
groups

# Users
cat /etc/passwd

# Groups
cat /etc/group

# File permissions
ls -l

# Change permissions
chmod 755 file

# Change owner
sudo chown user file

# Create group
sudo groupadd developers

# Add user to group
sudo usermod -aG developers user

⭐ Goal

By the end of this guide, you should be able to look at:

-rwxr-xr--


and understand that Linux is saying:

Owner  → read + write + execute
Group  → read + execute
Others → read


That's the foundation of Linux permission management.