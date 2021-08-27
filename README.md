# Installing the Camel-k Integration

Since we are accessing the REST API over https, we will first need to get the certificate, and create a secret with it.

keytool -trustcacerts -keystore "/home/sadhana/elastic_code/cert/trust.jks" -storepass changeit -importcert -alias elastic -file "/home/sadhana/elastic_code/cert/elasticsearch-sample-es-http.aml.es.crt"

oc create secret generic trust --from-file /home/sadhana/elastic_code/cert/trust.jks

Then we install the integration with kamel command line

kamel install
kamel run ElasticConnector.java
