# Project Guidelines 

# Run the bash script in the repository 

chmod +x elk.sh 

./elk.sh 

# Project Expected Results 

kubectl get pods -n josh 

![image](https://github.com/joshking1/elk-logs-metrics-monitoring/assets/88409463/24ea253e-5e29-43c3-8457-0bbbd2f6acc6)

kubectl get svc -n josh

![image](https://github.com/joshking1/elk-logs-metrics-monitoring/assets/88409463/d38403a1-7ec6-4281-98b2-f20eb7451e7f)

# Editing the svc manifests ==> Changing the ClusterIP to LoadBalancer 

kubectl edit svc elasticsearch-logging -n josh

![image](https://github.com/joshking1/elk-logs-metrics-monitoring/assets/88409463/db81a2a1-908c-4307-9804-b5e00cd68a1a)

kubectl edit svc kibana-logging -n josh

![image](https://github.com/joshking1/elk-logs-metrics-monitoring/assets/88409463/6613c7f1-332b-45ce-baeb-f5a532dc3f30)

# Why ELK is important 
ELK (Elasticsearch, Logstash, and Kibana) is an essential toolset for monitoring and managing Kubernetes infrastructure for several reasons, and it is precious for DevOps engineers. Here is why ELK is essential in the context of Kubernetes:

1.	Centralized Logging and Visualization: Kubernetes environments consist of numerous containers, pods, and nodes, making it crucial to aggregate and centralize logs from various sources. ELK provides a centralized platform for collecting logs, making them searchable, and visualizing them through Kibana's intuitive dashboards. This centralized approach simplifies log management and troubleshooting.
   
3.	Real-Time Monitoring: ELK enables real-time monitoring of Kubernetes resources, applications, and services. DevOps engineers can use Kibana to create custom dashboards and visualizations, allowing them to gain insights into the cluster's health and performance. This real-time visibility helps identify issues promptly and respond to them effectively.
   
5.	Troubleshooting and Debugging: Kubernetes environments can be complex, and troubleshooting issues without proper logging and monitoring can be challenging. ELK allows DevOps engineers to search and analyze logs efficiently, helping them pinpoint the root cause of problems, debug applications, and resolve issues faster.
   
7.	Alerting and Notification: ELK can be configured to generate alerts based on predefined criteria or anomalies detected in logs. This alerting mechanism helps DevOps teams proactively address issues before they impact the Kubernetes infrastructure's stability and performance.
   
9.	Scalability and Flexibility: ELK is designed to handle large volumes of log data, making it suitable for scaling with Kubernetes clusters as they grow. Elasticsearch, in particular, is known for its horizontal scalability, allowing you to add nodes to the cluster as needed. This ensures that ELK can keep up with the demands of a dynamic and rapidly changing Kubernetes environment.
    
11.	Integration with Kubernetes Components: ELK can integrate various Kubernetes components and tools. For example, it can collect logs from Kubernetes pods, nodes, and container runtimes like Docker. It can also work with other monitoring and alerting solutions commonly used in Kubernetes, such as Prometheus and Grafana.
    
13.	Comprehensive Monitoring: ELK is not limited to log aggregation; it can also monitor various aspects of Kubernetes, including resource utilization, application performance, and security-related events. This comprehensive monitoring helps DevOps teams maintain a stable and secure Kubernetes environment.
    
In summary, ELK is essential for DevOps engineers working with Kubernetes because it provides centralized logging, real-time monitoring, troubleshooting capabilities, alerting, scalability, and integration with Kubernetes components. These features empower DevOps teams to manage and maintain Kubernetes clusters, ensuring they run efficiently and reliably.

# Why log shippers ==> daemons such as metrics and filebeat 

Log shippers like Filebeat and metric collectors like Metricbeat are typically implemented as daemons or agents running on nodes in a distributed system or infrastructure. There are several reasons for this approach:

Efficiency and Resource Management: Daemons are long-running processes that can efficiently monitor and collect logs or metrics continuously. They are designed to consume fewer resources than spawning a new process for each log or metric collection event. This efficiency is crucial in resource-constrained environments.

Real-Time Data Collection: Daemons can operate in real-time, collecting logs and metrics as they are generated or become available. This ensures that data is captured promptly and there is minimal delay in processing and analysis.

Persistent Connections: Daemons can maintain persistent connections to log sources or metric endpoints. This reduces the overhead of establishing new connections for each log entry or metrics data point, which can be costly regarding latency and resource usage.

Buffering and Queuing: Daemons often include buffering and queuing mechanisms. They can buffer log entries or metric data locally before forwarding them to a central repository or processing pipeline. This helps smooth out spikes in data volume and ensures that data is not lost, even during network interruptions.

Reliability and Robustness: Daemons are designed to be resilient. They can handle various failure scenarios, such as network outages, and continue collecting data once the issue is resolved. This resilience ensures that log and metric data is not lost due to transient problems.

Authentication and Authorization: Daemons can be configured with appropriate authentication and authorization credentials to securely access log sources or metric endpoints. They can also manage authentication tokens or certificates and refresh them as needed.

Configuration Management: Daemons typically support configuration management, allowing operators to define which logs or metrics to collect, where to send the data, and how to handle specific scenarios. This makes managing and scaling log and metric collection easier across an infrastructure.

Service Discovery: Many daemons support service discovery mechanisms, enabling them to dynamically discover and monitor new log sources or metric endpoints as they are added or removed in the environment. This dynamic discovery ensures that every log or metric source is noticed.

Minimal User Intervention: Once set up and configured, daemons require minimal user intervention. They can run as background processes, continuously collecting data and automatically recovering from errors or issues.

Log shippers and metric collectors implemented as daemons offer various advantages, including efficiency, real-time data collection, reliability, and configuration management capabilities. They enable efficient log and metric collection and analysis in complex, distributed systems like container orchestrators (e.g., Kubernetes) and cloud-native environments.


