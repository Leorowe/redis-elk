ps aux | grep -i logstash | awk {'print $2'} | xargs kill -9
exec /logstash/bin/logstash agent -f /logstash.conf &