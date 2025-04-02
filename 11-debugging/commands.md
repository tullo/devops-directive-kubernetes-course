
k get svc

<!--
NAME                    TYPE           CLUSTER-IP      EXTERNAL-IP   PORT(S)        AGE
adservice               ClusterIP      10.96.25.214    <none>        9555/TCP       18m
cartservice             ClusterIP      10.96.76.40     <none>        7070/TCP       18m
checkoutservice         ClusterIP      10.96.178.195   <none>        5050/TCP       18m
currencyservice         ClusterIP      10.96.82.184    <none>        7000/TCP       18m
emailservice            ClusterIP      10.96.80.72     <none>        5000/TCP       18m
frontend                ClusterIP      10.96.44.245    <none>        80/TCP         18m
frontend-external       LoadBalancer   10.96.34.89     172.18.0.6    80:32212/TCP   18m
paymentservice          ClusterIP      10.96.218.193   <none>        50051/TCP      18m
productcatalogservice   ClusterIP      10.96.102.49    <none>        3550/TCP       18m
recommendationservice   ClusterIP      10.96.142.129   <none>        8080/TCP       18m
redis-cart              ClusterIP      10.96.22.118    <none>        6379/TCP       18m
shippingservice         ClusterIP      10.96.210.45    <none>        50051/TCP      18m
-->

http://172.18.0.6/
   could not retrieve currencies
     main.(*frontendServer).homeHandler

## currencyservice

`k9s`

`d microservices-demo/currencyservice`
    Last State: Terminated
      Reason: OOMKilled

fix memory in microservices-demo.yaml (currencyservice)

`t 02-install-microservices-demo`
`k9s`

## cartservice

http://172.18.0.6/
    connect: connection refused"
        could not retrieve cart

`k9s`
│   Warning  Unhealthy  26m (x12 over 29m)    kubelet            Readiness probe failed: timeout: failed to connect service
        "10.244.170:8080" within 1s: context deadline exceeded      │

fix liveness ports in microservices-demo.yaml (cartservice)
`t 02-install-microservices-demo`
`k9s`

## redis-cart

`k9s`
│   Failed to pull image "redis:debian": rpc error: code = NotFound desc = failed to pull and unpack image
        "docker.io/library/redis:debian": failed to resolve reference "docker.io/library/redis:debian":
            docker.io/library/redis:debian: not found

fix image in microservices-demo.yaml (redis-cart)
`t 02-install-microservices-demo`
`k9s`

## loadgenerator

`k9s`
fix resources req/limit in microservices-demo.yaml (loadgenerator)
`t 02-install-microservices-demo`
`k9s`
