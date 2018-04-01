# IPScanner-Powershell

## Powershell IP Scanner Applicattion

You can scan both internal and external ip adresses with this Program. For the details read below:

## How IP Scanner Work?
An usual ip scanner works like ping scan method. First you send ICMP ping request to the host(s) which, you want to check is it alive, than if the host(s) reply you back, it means that it is alive. Moreover this program can detect the user name if it is sharing. Besides **IpScannerV2** also creates 3 different txt files that makes your job easier. First output file is taken it's name with the first input. It is written that whole results of **IpScanner**. The second output name is canli and this output gives you just the living host(s). The third outut is cansiz and it gives you the host which is not alive or close to the icmp requests.  


## How You Give Parameters To This Powershell Program?
This program is better than existing ip scanner programs. You have to start a ip scanner with parameters. If you do not give the parameters while starting, the results will change and cannot control after it start. For that reason when you start an usual ip scanner, you confused that what should I type. Besides they do not give you any explanation accept manuel file. For this matter **IpScanner** takes the input after it starts and ask you in understandable way. 

First you need to type the output txt file name. Program also add the date and time of your location but searching in specific name is always easier for users. 

Than you need to give the subnet like "192.168.1" The **IpScanner** works on "C" class IP adresses due to the performance issue. Because of the waiting of the sended icmp packet time is too much, we make this program for "C" class scanning. Besides it does not have a capability of using threads so that if you want to be scan more than 1 "C" class, you should execute the program more than once. As I say before we can develop program with threads or after a scan it can ask you to continue or not, however with this version it is more efficient and lightweight that you can easily download and start an ip scan in a comprimised Windows machine. 

Than you need to write starting octest like "0"
In last step you need to write the finish octet "255"
For last two parameters you decide that your scan range like **192.168.1.0-192.168.1.255**

**Then the magic begins...**
## Example Uses and ScrenShoots:

### You can start executing the program :

![capture](https://user-images.githubusercontent.com/23013987/38173477-d683f532-35c7-11e8-9fba-a9c9ab9eb24e.JPG)

### You give the filename:

![image](https://user-images.githubusercontent.com/23013987/38173505-1a1bd10c-35c8-11e8-9470-019f761d1d36.png)


### You give the ip :

![image](https://user-images.githubusercontent.com/23013987/38173525-3f672ec0-35c8-11e8-922f-9dd6bdf787fd.png)

### You give the range that you want to scan:

![image](https://user-images.githubusercontent.com/23013987/38173540-6fcb5276-35c8-11e8-8da9-33cf0351459e.png)

### Your reslts will return like:

![image](https://user-images.githubusercontent.com/23013987/38173557-a8369300-35c8-11e8-8d3a-c1ef59bb1dfc.png)

### Your output files looklike:

![image](https://user-images.githubusercontent.com/23013987/38173575-fbabfb1a-35c8-11e8-858a-e031d4766a43.png)


### Inside of an output file:

![image](https://user-images.githubusercontent.com/23013987/38173579-12deb49e-35c9-11e8-9047-382f8d59646a.png)






