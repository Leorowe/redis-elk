# redis-elk
ELK with redis input

## Usage
Default boot command: 

    docker run -d -p 80:80 -p 3333:3333 -p 9200:9200 -p 6379:6379 leorowe/redis-elk

Default command will start ELK and redis-server within a docker.

* Kibana in `80`
* Logstash tcp input in `3333`
* ElasticSearch in `9200` 
* Redis-server in `6379`.

To send data to elk, stream to TCP port 3333
  `echo 'Hello ELK ' | nc HOST 3333`
  Host is the IP of the docker host

## Use Case 

### Use it with Jenkins Logstash Plugin

To cooperate with jenkis , check out this [Logstash Plugin](https://wiki.jenkins-ci.org/display/JENKINS/Logstash+Plugin)

Also you can use [jenkins-logstash docker image](https://github.com/larrycai/docker-images/tree/master/jenkins-logstash) to have a complete demo like

    $ docker run -d -p 80:80 -p 3333:3333 -p 9200:9200 -p 6379:6379 --name relk leorowe/redis-elk
	$ docker run -d -p 8080:8080 --link relk:relk larrycai/jenkins-logstash 

## Reference 	

* https://ianunruh.com/2014/05/monitor-everything-part-2.html