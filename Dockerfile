FROM peaceiris/hugo:v0.118.2-full


RUN apt install nano && hugo mod tidy && hugo mod npm pack && npm install
#RUN apk add apt-get
# RUN rm -rf /usr/local/go 
# RUN apk update && apk add wget
# RUN wget https://go.dev/dl/go1.22.1.linux-amd64.tar.gz
# RUN tar -xzf go1.22.1.linux-amd64.tar.gz 
# RUN export PATH=$PATH:/usr/local/go/bin
ENTRYPOINT [ "" ]

WORKDIR /src

# FROM floryn90/hugo:0.118.2-alpine

# WORKDIR /usr/local
# RUN apk add --update nodejs npm git nano
# COPY --from=golang:1.19-alpine /usr/local/go/ /usr/local/go/
# ENV PATH="/usr/local/go/bin:${PATH}"