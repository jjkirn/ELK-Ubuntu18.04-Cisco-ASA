# Shell script to check if all the process used for Elasticsearch are running - JJK 6/14/21
#
echo -n "Elasticsearch: "; sudo systemctl is-active elasticsearch
echo -n "Logstash: "; sudo systemctl is-active logstash
echo -n "Kibana: "; sudo systemctl is-active kibana
echo -n "NGINX: "; sudo systemctl is-active nginx
echo "netstat -antp:"
sudo netstat -antp | grep LISTEN | egrep -e "80|443|5514|5601|9200"
