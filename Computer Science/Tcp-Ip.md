# TCP/IP

## History 

Transmission Control Protocol/Internet Protocol

The Defense Advanced Research Projects Agency, the research branch of the U.S. Department of Defense, created the TCP/IP model in the 1970s for use in ARPANET, a wide area network that preceded the internet. TCP/IP was originally designed for the Unix OS, and it has been built into all of the OSes that came after it.

The TCP/IP model and its related protocols are now maintained by the Internet Engineering Task Force.

## Basic

The two main protocols in the IP suite serve specific functions. TCP defines how applications can create channels of communication across a network. It also manages how a message is assembled into smaller packets before they are then transmitted over the internet and reassembled in the right order at the destination address.

IP defines how to address and route each packet to make sure it reaches the right destination.

A subnet mask tells a computer, or other network device, what portion of the IP address is used to represent the network and what part is used to represent hosts, or other computers, on the network.

Network address translation (NAT) is the virtualization of IP addresses. NAT helps improve security and decrease the number of IP addresses an organization needs.

## Why is TCP/IP important?

TCP/IP is nonproprietary and, as a result, is not controlled by any single company. Therefore, the IP suite can be modified easily. It is compatible with all operating systems (OSes), so it can communicate with any other system. The IP suite is also compatible with all types of computer hardware and networks.

TCP/IP is highly scalable and, as a routable protocol, can determine the most efficient path through the network. It is widely used in current internet architecture.

## The 4 layers of the TCP/IP model

TCP/IP functionality is divided into four layers, each of which includes specific protocols:

The application layer provides applications with standardized data exchange. Its protocols include HTTP, FTP, Post Office Protocol 3, Simple Mail Transfer Protocol and Simple Network Management Protocol. At the application layer, the payload is the actual application data.

The transport layer is responsible for maintaining end-to-end communications across the network. TCP handles communications between hosts and provides flow control, multiplexing and reliability. The transport protocols include TCP and User Datagram Protocol, which is sometimes used instead of TCP for special purposes.

The network layer, also called the internet layer, deals with packets and connects independent networks to transport the packets across network boundaries. The network layer protocols are IP and Internet Control Message Protocol, which is used for error reporting.

The physical layer, also known as the network interface layer or data link layer, consists of protocols that operate only on a link -- the network component that interconnects nodes or hosts in the network. The protocols in this lowest layer include Ethernet for local area networks and Address Resolution Protocol.

## How are TCP/IP and IP different?

### IP

IP is a low-level internet protocol that facilitates data communications over the internet. Its purpose is to deliver packets of data that consist of a header, which contains routing information, such as source and destination of the data, and the data payload itself.

IP is limited by the amount of data that it can send. The maximum size of a single IP data packet, which contains both the header and the data, is between 20 and 24 bytes long. This means that longer strings of data must be broken into multiple data packets that must be independently sent and then reorganized into the correct order after they are sent.

Since IP is strictly a data send/receive protocol, there is no built-in checking that verifies whether the data packets sent were actually received.

### TCP/IP

TCP/IP is a higher-level smart communications protocol that can do more things. TCP/IP still uses IP as a means of transporting data packets, but it also connects computers, applications, webpages and web servers. TCP understands holistically the entire streams of data that these assets require in order to operate, and it makes sure the entire volume of data needed is sent the first time. TCP also runs checks that ensure the data is delivered.

TCP can also control the size and flow rate of data. It ensures that networks are free of any congestion that could block the receipt of data.

An example is an application that wants to send a large amount of data over the internet. If the application only used IP, the data would have to be broken into multiple IP packets. This would require multiple requests to send and receive data, since IP requests are issued per packet.

With TCP, only a single request to send an entire data stream is needed; TCP handles the rest. Unlike IP, TCP can detect problems that arise in IP and request retransmission of any data packets that were lost. TCP can also reorganize packets so they get transmitted in the proper order -- and it can minimize network congestion. TCP/IP makes data transfers over the internet easier.

## TCP/IP model vs. OSI model

TCP/IP and OSI are the most widely used communication networking protocols. The main difference is that OSI is a conceptual model that is not practically used for communication. Rather, it defines how applications can communicate over a network. TCP/IP, on the other hand, is widely used to establish links and network interaction.
