# redis-elk
ELK with redis input

###Help:
Default boot command: 
`docker run -d -p 80:80 -p 3333:3333 -p 9200:9200 -p 6379:6379 leorowe/redis-elk`

Default command will start ELK and redis-server within a docker.
* Kibana in 80
* Logstash tcp input in 3333
* ElasticSearch in 9200 
* Redis-server in 6379.

To send data to elk, stream to TCP port 3333
  `echo 'Hello ELK ' | nc HOST 3333`
  Host is the IP of the docker host

To cooperate with jenkis , check out this [Logstash Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Logstash+Plugin)
