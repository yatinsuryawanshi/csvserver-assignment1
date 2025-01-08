cd
tree
clear
cfdisk /dev/sda
fstab
vim /etc/fstab 
df -hT
mkdir scp_receive
ls
vim /etc/ssh/sshd_config
init 6
ls
exit
docker run --name csvserver -d infracloudio/csvserver:latest
docker ps -a
docker logs csvserver
podman logs csvserver
#!/bin/bash
start=$1
end=$2
for ((i=$start; i<=$end; i++)); do     echo "$i, $((RANDOM % 1000))"; done > inputFile
#!/bin/bash
start=$1
end=$2
for ((i=$start; i<=$end; i++)); do     echo "$i, $((RANDOM % 1000))"; done > inputFile
#!/bin/bash
start=$1
end=$2
# Check if arguments are passed
if [[ -z "$start" || -z "$end" ]]; then     echo "Usage: ./gencsv.sh <start> <end>";     exit 1; fi
#!/bin/bash
start=$1
end=$2
# Check if arguments are passed
if [[ -z "$start" || -z "$end" ]]; then     echo "Usage: ./gencsv.sh <start> <end>";     exit 1; fi
#!/bin/bash
start=$1
end=$2
# Check if arguments are passed
if [[ -z "$start" || -z "$end" ]]; then     echo "Usage: ./gencsv.sh <start> <end>";     exit 1; fi
chmod +x gencsv.sh
#!/bin/bash
start=$1
end=$2
# Check if arguments are passed
if [[ -z "$start" || -z "$end" ]]; then     echo "Usage: ./gencsv.sh <start> <end>";     exit 1; fi
[200~curl http://localhost:9393
cd
curl http://localhost:9393
podman pull infracloudio/csvserver:latest
podman pull prom/prometheus:v2.45.2
podman run -d --name csvserver -p 9393:9393 -v $(pwd)/inputFile:/csvserver/inputdata/inputFile:Z infracloudio/csvserver:latest
#!/bin/bash
# gencsv.sh script to generate inputFile
# Arguments: $1 = start index, $2 = end index
if [ "$#" -ne 2 ]; then   echo "Usage: ./gencsv.sh <start_index> <end_index>";   exit 1; fi
