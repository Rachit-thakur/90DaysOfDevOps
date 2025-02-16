https://networking-concepts.hashnode.dev/networking-concepts-for-newbies
# WHAT IS NETWORKING?
Networking, in simple terms, is the process of connecting computers, devices, or systems together so they can communicate and share information. It's like how people talk to each other over the phone, send emails, or chat in person. But instead of people, it's devices like computers, printers, or phones exchanging data.

# WHAT IS ROUTER?
A router is a network device that forwards data packets between computer networks, typically between a local area network (LAN) and a wide area network (WAN) like the internet. The router takes the internet connection from your service provider (like a cable or fiber connection) and shares it with all the devices in your home or office. Routers operate at the network layer (Layer 3) of the OSI model.

# PROTOCOLS AND THEIR PORT NUMBER
In networking, protocols are a set of rules and conventions that determine how data is transmitted, received, and processed between devices over a network, each protocol typically operates on a specific port number, which is a unique identifier used to direct network traffic to the correct service or application on a device. Port numbers range from 0 to 65535.

# TYPES OF PROTOCOL
## HTTP (Hyper Text Transfer Protocol) -port number 80
HTTP is the protocol used for transferring web pages and data over the internet. It defines how web browsers and web servers communicate.

Common use: Web browsing.

## HTTPS (Hyper Text Transfer Protocol Secure)- port number 443
HTTPS is a secure version of HTTP. It encrypts the communication between the web browser and the server.

Common use: Secure browsing (e.g., online banking, shopping).

## FTP (File Transfer Protocol) - port number 20, 21
FTP is used for transferring files between computers on a network. FTP connects to a server, and users can upload or download files between their local machine and the server.

Port 21: Used for the control connection (sending commands).

Port 20: Used for the data connection (sending files).

Common use: Used by website owners to upload or download files from their web hosting servers or for sharing large files.

## SSH (Secure Shell) -port number 22
SSH provides secure, encrypted remote access to systems and devices, often used for administration of servers.

Common use: Remote login to Linux/Unix servers, secure file transfer (SFTP).

## DNS (Domain Name System) -port number 53
DNS is responsible for translating human-readable domain names (like www.example.com) into IP addresses, so browsers and other services can connect to websites.

Common use: Resolving domain names into IP addresses.

# OSI (OPEN SYSTEM INTERCONNECTION MODEL)
The OSI model is a theoretical framework that describes the different stages involved in network communication. It has 7 layers that work together to help transmit data from one system to another.

## What is the OSI model?

### 1. APPLICATION LAYER (layer 7)
This layer is closest to the end user. It provides network services directly to the user, like web browsing, email, and file transfer.

Real life example: Imagine you’re sending a letter to a friend. This is where you write the letter itself. You decide the content and purpose, just like how an application like a web browser or email works in this layer.
### 2. PRESENTATION LAYER (layer 6)
It translates, encrypts, or compresses data. It ensures that data is in a readable format for the application layer. It also handles data encoding and encryption/decryption.

Real life example: You then decide on the format of the letter — maybe you use special handwriting, a special envelope, or add pictures. In the network world, this layer makes sure that the data is in the correct format or encryption for the recipient to understand.
### 3. SESSION LAYER (layer 5)
This layer manages and controls the communication sessions. It establishes, maintains, and terminates connections between applications.

Real life example: This layer manages the conversation. Before you send the letter, you might confirm with your friend when they’re free to receive it. In networking, the session layer manages the connection between two devices, making sure they can "talk" properly.
### 4. TRANSPORT LAYER (layer 4)
This layer is responsible for ensuring end-to-end communication, error correction, and flow control. It divides data into segments and ensures it is delivered correctly.

Real life example: Now, you send the letter using a postal service. The transport layer ensures that the data reaches the right address, and if it doesn’t, it’ll ask for the letter to be sent again (error checking).
### 5. NETWORK LAYER (layer 3)
It handles routing, addressing, and forwarding of data across networks. It determines the best path to transfer data to its destination.

Real life example: Here, the postal service looks at the destination address and chooses the best route to deliver the letter. In networking, this layer decides how the data will travel across different networks, like choosing the best path to a destination.
### 6. DATA LINK LAYER (layer 2)
This layer handles physical addressing (MAC addresses), error detection, and flow control at the data link level. It ensures the data is properly formatted for transmission over a specific medium (e.g., Ethernet or Wi-Fi).

Real life example: This is like the postal worker who delivers the letter to your friend’s mailbox. It checks if the letter has reached the correct physical location (for example, a specific house or building).
### 7. PHYSICAL LAYER (layer 1)
This is the lowest layer, and it deals with the actual physical connection between devices. It handles transmission of raw data (as electrical signals, light pulses, etc.) over the communication medium (like cables, fiber optics, or wireless signals).

Real life example: Finally, the physical layer involves the actual delivery — the postal worker physically bringing the letter to your friend's door. In networking, this is the hardware (cables, routers, etc.) that transmits the actual data.
# TCP/IP MODEL
The TCP/IP model is a more practical, streamlined model compared to OSI. It was created to guide the development of the internet and its communication protocols. Unlike OSI, it has 4 layers that map closely to the functions of the OSI model.

TCP/IP Model - GeeksforGeeks

### 1. APPLICATION LAYER (corresponds to OSI layers 5-7)
This layer contains protocols that provide end-user services. It handles high-level functions like file transfer, email, and browsing.

Real life example: Think of making a phone call — a more real-time interaction. This is where you use an app like Skype or WhatsApp. You decide to make a phone call (or send a message). This is the interface where the user interacts with the network, similar to how a web browser or an email client works.
### 2. TRANSPORT LAYER (corresponds to OSI layer 4)
The Transport Layer ensures reliable data transfer between two systems. The two main protocols here are TCP (Transmission Control Protocol) and UDP (User Datagram Protocol). TCP guarantees reliable delivery of data by ensuring error-free transmission, while UDP is faster but less reliable.

Real life example: When you make the call, the transport layer ensures that your voice (or message) is split into small pieces (called packets) and reliably delivered to the other person. It also makes sure the call is intact without errors (like TCP does).
### 3. INTERNET LAYER (corresponds to OSI layer 3)
This layer is responsible for logical addressing (IP addressing) and routing data across networks. The main protocol at this layer is IP (Internet Protocol), which ensures data packets are sent to the correct destination.

Real life example: This layer makes sure the data gets routed through the right network. Imagine there’s a call center that handles the routing of phone calls. The internet layer determines the best way for the call to travel across the network.
### 4. LINK LAYER(corresponds to OSI layer 1-2)
The Link Layer handles the physical transmission of data over the network. It defines how data is formatted and transmitted over the hardware (Ethernet, Wi-Fi, etc.).

Real life example: This is like the phone line itself, or the wireless connection. It’s the physical path your call or data takes to get to the other person. In networks, this involves things like Ethernet cables, Wi-Fi, or other local networks.
