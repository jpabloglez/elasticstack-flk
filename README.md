# Elastic 
Demonstration for the configuration and usage to exploit fake logger data

## Setup
Bring up the containers:
```
```

Generate token for elasticsearch authentication:
```
/usr/share/elasticsearch/bin/elasticsearch-reset-password -i -u elastic --url https://localhost:9200

/usr/share/elasticsearch/bin/elasticsearch-create-enrollment-token -s kibana --url https://localhost:9200
```

Sing in @ Kibana portal => http://localhost:5601/


## Usage
Create fake logs using the fake-logs package:

* [Python Fake Logs](https://github.com/s4tori/fake-logs)

Exmaple to produce 10 entrines of an Apache server style logs written to app.log file:

```
python3 fake-logs.py -o app.log -n 10 -f apache
```
Validate logstash with a basic stdin/stdout pipeline:

```
/usr/share/logstash/bin/logstash -e 'input { stdin { } } output { stdout { } }' --path.data /usr/share/logstash/logs/test
```

## Plugins

* [Input plugins](https://www.elastic.co/guide/en/logstash/current/input-plugins.html)
* [Output plugins](https://www.elastic.co/guide/en/logstash/current/output-plugins.html)


## References:
* [](https://stackoverflow.com/questions/71193286/error-failed-to-determine-the-health-of-the-cluster)