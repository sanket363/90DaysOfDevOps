apiVersion: apps/v1
kind: Deployment
metadata:
  name: my-app1
  labels:
    app: my-app1
spec:
  replicas: 3
  selector:
    matchLabels:
      app: my-app1
  template:
    metadata:
      labels:
        app: my-app1
    spec:
      containers:
      - name: my-app1
        image: snaket2628/my-app1
        ports:
        - containerPort: 80
