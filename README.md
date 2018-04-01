# IPScanner-Powershell

## Powershell IP Scanner Applicattion

You can scan both internal and external ip ranges with this Program. For the details read below:

## How IP Scanner Work?
An usual ip scanner works like ping scan method. First you send ICMP ping request to the host(s) which, you want to check is it alive, than if the host(s) reply you back, it means that it is alive. Moreover this program can detect the user name if it is sharing. Besides IpScannerV2 also creates 3 different txt files that makes your job easier. First output file is taken it's name with the first input. It is written that whole results of IpScanner. The second output name is canli and this output gives you just the living host(s). The third outut is cansiz and it gives you the host which is not alive or close to the icmp requests.  


## How You Give Parameters To This Powershell Program?
This program is better than existing ip scanner programs. You have to start a ip scanner with parameters. If you do not give the parameters while starting, the results will change and cannot control after it start. For that reason when you start an usual ip scanner, you confused that what should I type. Besides they do not give you any explanation accept manuel file. For this matter IpScanner takes the input after it starts and ask you in understandable way. 

First you need to type the output txt file name. Program also add the date and time of your location but searching in specific name is always easier for users. 

Than you need to give the subnet like "192.168.1" The IpScanner works on "C" class IP adresses due to the performance issue. Because of the waiting of the sended icmp packet time is too much, we make this program for "C" class scanning. Besides it does not have a capability of using threads so that if you want to be scan more than 1 "C" class, you should execute the program more than once. As I say before we can develop program with threads or after a scan it can ask you to continue or not, however with this version it is more efficient and lightweight that you can easily download and start an ip scan in a comprimised Windows machine. 

## Example Uses and ScrenShoots:





