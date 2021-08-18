# ELK-Getting-Started

This Repo will provide you with complete knowledge of implementing ELK Stack, which consist of ElasticSearch, Kibana, Logstash and Beats. And how it can be used to monitor logs of software program.


## Elasticsearch

Elasticsearch is used to store the data generated from various usecases and used to do analysis and search on the data. It uses RESTful API's and documentDB in the backend. provides you with a lighting fast search, fine-tuned relevancy and powerful analytics.

The search results in backend uses TF-IDF (Term Frequency and Inverse Document Frequency) vectorizer.

It is the heart of Elastic Stack.

Port Numbers : 9200 for web portal and 9300 for listening to the other nodes in the  cluster.

## Kibana

Kibana is an analytical tool where you can get the data from Elasticsearch, create dashboards with great visualizations, and can be used  for realtime analysis.You can also operate Elasticsearch with Kibana using REST API's.

Port Numbers : 5601 for web portal. 

## Logstash

Logstash is a tool which help's us to transform the log data into required format and send to elasticsearch. It used for Extracting, Loading and Transform (ELT)the logs into desired format.

Listens to the port number 5044, to read the data from beats.

## Beats

Beats only have single goal, to send the data from various machines to logstash or elasticsearch.
When we want to transform the data, it is better to send the data to logstash and then to elasticsearch.

Here Index is known as Database.   
