# Installing the Camel-k Integration

Since we are accessing the REST API over https, we will first need to get the certificate, and create a secret with it.
Also, since we're calling the REST endpoint, we need to provide a basic auth header.
`oc extract secret/elasticsearch-sample-es-http-certs-internal --keys=ca.crt --to=- > ca.crt`

`keytool -trustcacerts -keystore "trust.jks" -storepass changeit -importcert -alias elastic -file "ca.crt"`

`oc create secret generic trust --from-file trust.jks`

To create the basic auth header, you'll need to base64 encode the username:password.  The default username for 
elasticsearch is elastic.  To find the password, run the following command which will get the elastic user password.
Lastly, base64encode the username:password and replace the XXXXX in the ElasticConnector.java file.  

`oc get secret "elasticsearch-sample-es-elastic-user" -o go-template='{{.data.elastic | base64decode }}'`

Then we install the integration with kamel command line

`kamel install`
`kamel run ElasticConnector.java`

### ACM Deployment 
[ACM Configs for Camel-k Integration](acm-configs/README.md)