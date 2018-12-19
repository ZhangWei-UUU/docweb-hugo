# docweb-hugo

Based on Hugo frame to build a website automatically.

### Production

```
docker build -t imageName .
docker run --name containerName -p 80:80 -d imageName
```

### Logging Managerment

```
docker logs containerName
```
