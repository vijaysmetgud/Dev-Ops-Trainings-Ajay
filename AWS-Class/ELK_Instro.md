# What is the ELK stack?
## EFK - Elasticsearch FluentD kibana

  * E = Elasticsearch 
  * L = Logstash
  * K = Kibana
---

## E = Elasticsearch 
* it is search and analysis engine 
* it will search and analysis the logs to store data
* Elasticsearch is a distributed search and log analytics engine built on Apache Lucene.

---

## L = Logstash

* Data collection engine
* data ingestion tool that allows you to collect data from a variety of sources, transform it, and send it to your desired destination.

                  or 

* Data collection engine. It supports the dynamic collection of data from various data sources, and performs operations such as filtering, analyzing, enriching, and unifying the format of the data, and then storing it in the location specified by the user.

---

## K = Kibana
* it is a dashboard to view the logs 
* Kibana is a data visualization and exploration tool for reviewing logs and events.
* it is web UI

---

# ELK Stack Installing on AWS EC2 instance:-

## Steps:-

* Create an EC2 instance.

---

* create security group
      * add inbound rules for kibana custom-tcp port 5601 
---

* Install Java.
    * should be more then 1.8 version 
---

* Install Elasticsearch.
   * Edit the Elasticsearch file like below
       *  /etc/elasticsearch/elasticsearch.yml

```
network.host: "localhost" - please provide ur host name//in our case private or elastic ip address 
http.port: 9200 - port number custom 
```

* service elasticsearch start
* Verify the installation by using Curl command
* curl http://localhost:9200

---

* Install Logstash

  * Create a Logstash configuration file:-

    * vi /etc/logstash/conf.d/apache-access.log
```
    input {
  file {
    path => "/home/ubuntu/apache-daily-access.log"
  start_position => "beginning"
  date {
    match => [ "timestamp" , "dd/MMM/yyyy:HH:mm:ss Z" ]

    output {
  elasticsearch { 
  hosts => ["localhost:9200"]   ---> our case should be elastic server hostname and port number
  }
}
```
* This file is telling Logstash to collect the local /home/ubuntu/apache-access.log file and send it to Elasticsearch for indexing.

* The input section specifies which files to collect (path) and what format to expect.

* The output section defines where Logstash is to ship the data to Elasticsearch.

* service logstash start

* make sure the data is being indexed, use:-

url -XGET 'localhost:9200/_cat/indices?v&pretty'

You should see your new Logstash index created:

---

* Install Kibana

vi /etc/kibana/kibana.yml

```
server.port: 5601-->kibana server port number
server.host: "localhost" ---> kibana server host name
elasticsearch.hosts:"http://localhost:9200"-ELK host url 
```

* service kibana start

* Testing connection with our ec2 machine Elastic ip address with kibana port number for dashboard.

 https//‘http://YOUR_ELASTIC_IP:5601’ --> our ec2  machine 

 ---

# Upgrade ELK:-

* login to aws console 
* select Amazon Elasticsearch Service
* select dashboard
* under select which domain you want to upgrade so that it will be upgraded to higher version


* we can see the process of upgrading it..

