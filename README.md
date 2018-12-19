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
### Continuous integration

#### The first step: login your target production server

```
ssh username@ip_address
```

#### The second step: create the git library

```
git init --bare docweb-hugo.git
```

then enter into the library's `hooks` folder and create `post-receive` file.

> Note: running command `chmod ug+x post-receive`to authority
```bash
#!/bin/bash
TRAGET="/home/ubuntu/docweb-hugo-dir"
GIT_DIR="/home/ubuntu/docweb-hugo.git"
BRANCH="master"

while read oldrev newrev ref
do
        # only checking out the master (or whatever branch you would like to deploy)
        if [[ $ref = refs/heads/$BRANCH ]];
        then
                echo "Ref $ref received. 部署 ${BRANCH} 分支到生产环境中"
                git --work-tree=$TRAGET --git-dir=$GIT_DIR checkout -f
                echo "停止容器运行"
                docker stop docweb
                echo "删除旧容器"
                docker rm docwebContainer 
                echo "删除旧镜像"
                docker rmi docwebImage
                echo "构建新镜像"
                cd ~/docweb-hugo-dir
                docker build -t docwebImage .
                echo "启动新容器"
                docker run --name docwebContainer -p 6000:80 -d docwebImage
                echo "运行成功"
        else
                echo "Ref $ref received. Doing nothing: only the ${BRANCH} branch may be deployed on this server."
        fi
done
```

#### The third step: add remote git branch to local dev environment

```
git remote add production user@ip_address:~/docweb-hugo.git 
```


