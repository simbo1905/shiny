# RStudio Shiny Server "ShinyR" on centos7 and openshift

```
docker build -t shiny:latest .
# openshift uses a random user id for addtional security which we simulate here
docker run -u 12345 -p 3838:3838 -it shiny:latest
```

To push to docker hub:

```
# the user name and deploy tag to be yours in the following
docker tag shiny:latest username:deploytag
docker login
docker push username:deploytag
```

To deploy to openshift edit the openshift.json and edit the following line to be your docker hub repo:

```
"dockerImageRepository": "simonmassey/shiny`
```

and edit the tag `20160811_1631` in the following line to be that tag you pushed: 

```
 "name": "shiny-centos7:20160811_1631"
```

TODO: 

[ ] setup a build pipline in either dockerhub or openshift to deploy automatically
