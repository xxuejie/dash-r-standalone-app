FROM docker.io/rhub/r-minimal:4.2.2

RUN installr -d -a "curl-dev libxml2-dev gfortran" -t "autoconf automake libtool m4" plotly/dashR

WORKDIR /code
COPY app.R /code/app.R

CMD ["R", "-e", "source('app.R')"]
