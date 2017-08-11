# RStudio Shiny Server "ShinyR" on centos7 and openshift

```
docker build -t shiny:latest .
# openshift uses a random user id for addtional security which we simulate here
docker run -u 12345 -p 3838:3838 -it shiny:latest
```
