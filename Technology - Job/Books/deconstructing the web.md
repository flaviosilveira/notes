# Deconstructing the web

URI - Uniform resource identifier - Does not have the details of how to connect
URL - Uniform resource locator - Does have the details of how to connect

HSTS - determine if redirect to HTTPS or not

Cache - validate the cache - max-age
Http Code 304 - Not Modified

getaddrinfo - OS lib to resolve the DNS

Happy eyeballs Algorithm - IPV6 over IPV4

A - IPV4
AAAA - IPV6
CNAME - nickname for the domain

OSI Model

Command to check DNS, A and CNAME
```
dig google.com
``` 

## UDP/IP - Like a letter.
UDP - Is the envelope
IP - Is the address
Data - Is the content

FQDN - Fully Qualified Domain name
Domain with a dot at the end.

Root servers will know what TLD (Top-level Domain) servers will know the domain.
TLD Servers will return with another server that may know the IP of the domain
You can use DNSTracer software to check that happenning in real time.

In UDP/IP you dont know about the status of what you send. It is like a letter, you just sent.

## HTTP
Uses TCP/IP.
With TCP/IP is possible to keep a connection and guarantee the delivery of the data.

## TCP Three-way handshake
SYN, ACK

## HTTPS - HTTP Over TLS
