FROM rocker/shiny
USER shiny
CMD ["/usr/bin/shiny-server.sh"]
