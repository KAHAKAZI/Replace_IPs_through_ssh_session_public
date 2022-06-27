# Change IP through ssh session

## About

---
Sometimes there comes a situation when there is a need to change IP of multiple files.

This can occur for example when you deal with [WSO2 ESB](https://wso2.com/products/enterprise-service-bus/) bus. If there are custom endpoints or proxy services and their IPs expire the new IPs are to be specified.

This script automates this process.

## Customization of the script
* change the <i>exemplary_files</i> content to your directory of endpoints
* change the <i>pattern</i> variable to specify common filenames name which is to be looked for

## Use cases

---

Run the script with the IP as a parameter:
```aidl
./changeIp.sh 172.20.10.2
```

Run the script through SSH session inside the server. 

The IP will come from $SSH_CLIENT environmental variable equal to your ssh client IP:
```aidl
./changeIp.sh
```
