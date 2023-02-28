1. What is Kubernetes? Write in your own words and why do we call it k8s?
Kubernetes is an open-source container orchestration platform used to automate the deployment, scaling, and management of containerized applications. It provides a way to manage and orchestrate containerized applications in a distributed environment. It is called k8s because it has eight letters between k and s.

2. What are the benefits of using k8s?
The benefits of using k8s are:
- It allows for automatic scaling of containers, ensuring that applications are always available and can handle increased traffic.
- It provides a uniform way to deploy, manage, and update containerized applications across different environments, such as development, testing, and production.
- It provides self-healing capabilities, such as automatic container restarts or replacement, to maintain the desired state of the application.
- It provides efficient resource utilization by scheduling containers to run on available nodes in a cluster.
- It supports rolling updates and rollbacks, enabling updates to be deployed with minimal downtime and the ability to quickly revert if there are issues.

3. Explain the architecture of Kubernetes, refer to [this video](https://youtu.be/FqfoDUhzyDo)
Kubernetes architecture consists of two main components:
- Control Plane: This is the brain of the Kubernetes cluster and is responsible for managing the overall state of the system. It includes the API server, etcd, controller manager, and scheduler.
- Nodes: These are the worker machines in the cluster that run containerized applications. Nodes can be physical machines or virtual machines.

4. What is Control Plane?
The Control Plane is the set of components that manages the overall state of the Kubernetes cluster. It includes the API server, etcd, controller manager, and scheduler. The Control Plane makes decisions about where to deploy containers and ensures that the desired state of the system is maintained.

5. Write the difference between kubectl and kubelets.
kubectl is a command-line tool used to interact with the Kubernetes API server. It is used to manage Kubernetes objects, such as pods, deployments, services, and more. On the other hand, kubelet is an agent that runs on each node in the cluster and is responsible for managing the containers on that node. It communicates with the Control Plane to receive instructions about which containers to run and manages the containers' lifecycle.

6. Explain the role of the API server.
The API server is the gateway to the Kubernetes cluster. It exposes the Kubernetes API, which is used by kubectl and other clients to interact with the cluster. The API server validates and processes requests, and then communicates with other components in the Control Plane, such as the scheduler or controller manager, to make decisions about the cluster's state. The API server is also responsible for storing the state of the system in etcd.