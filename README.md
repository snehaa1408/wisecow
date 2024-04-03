# WiseCow: (Steps to Running it)

## Prerequisites

```         
sudo apt install fortune-mod cowsay -y
```

**Docker:**

Step 1:

``` dockerfile
docker build -t <name-image> .
```

Step 2:

To expose the application to port 4499, use the "-p" flag followed by the port number

``` dockerfile
docker run -p 4499:4499 .
```

Step 3:

Now you can acess the containerized application on:

``` url
localhost:4499
```

**Kubernetes:**

Step 1:

Start your kubernetes (In my case I'm using minikube)

```         
minikube start
```

Step 2:

Apply the Deployment ,Service configuration and Ingress using the **`kubectl apply`** command:

```         
kubectl apply -f ./kubernetes/
```
