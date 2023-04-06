# ***This has been created in response for a Sysadmin-challenge***

## **Using bash write a script to get OS version from multiple Linux servers:**

The script uploaded here as get_server_info.sh was developed in a WSL session.
- In order to be able to run this script following requirements must be met:
  - The account used here to connect to servers (myuser) must have its public rsa key distributed in all servers (under ~/.ssh/authorized_keys file) to be able to connect without password interation
  - A list of server's ips must be included in a file called myservers_list.txt (use same dir path where script is located)
  - I'm assuming here that most of your server are Redhat Linux (mentioned in the interview)
  - The script do not require any interation, just running it from where it is (./get_server_info.sh) will do the job. The output file will be created in the same dir path where it is located, named as servers_version.txt





## **Using bash write a script to find and remove duplicated fake IP addresses lines of "control_file.txt" file and save the output at /tmp/output_1.txt**

**For this case, it does not require a script to do the job. The following command line will do it:**\
**cat control_file.txt | sort | uniq --check-chars=12 >> /tmp/output_1.txt**
