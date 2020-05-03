# Ops

> Open your cluster to the reald world!

How our cluster will be opened to the world? There are three common ways:
 * NodePort services
 * LoadBalancer services
 * Ingress Resources

**NodePort** services expose your service at a port on all your nodes (range 30000–32767). They are usefull for development purpose, but are only a building block for higher level models, when you need a production URL

**LoadBalancer** services deploy an external load balancer to route external traffic to your service inside the cluster. The exact implementation depend on the cloud provider, and you have to supply your own when deploying on bare metal

**Ingress resources** are an high level abstraction which allow host or URL based HTTP routing, and are implemented by a third party proxy known as *Ingress controller*

# Traefik

[Traefik](https://containo.us/traefik/) will be used as *ingress controller* in our cluster. Its purpose will be to load balance external traffic and to expose internal services to the world

Why Traefik? Well, simply because it *rocks*. It's production ready, used by big companies, easy to use, open source...

It works everywhere, is well designed and well documented, and have a big ecosystem around it.

And last of all, it supports a lot of nicely features, such as authentification and HTTPS

## Deploy

Simply run `deploy.sh`!

Bonus : Traefik comes with a nice dashboard, allowing us to monitor incoming traffic

![Traefik Services](/.github/traefik-services.png)
![Traefik Providers](/.github/traefik-providers.png)

Traefik dashboard is exposed with a NodePort service on port 30080

> Access it with http://ANYNODEIP:30080

### Contributors

![GitHub Logo](https://github.com/LeChatErrant.png?size=30) &nbsp; [LeChatErrant](https://github.com/LeChatErrant) - creator and maintainer
