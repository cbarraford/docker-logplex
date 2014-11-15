FROM ubuntu:latest
MAINTAINER Chad Barraford <chad@rstudio.com>

# Set environment.
ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update
RUN apt-get -y install curl openssl libssl-dev git
RUN echo deb http://packages.erlang-solutions.com/debian precise contrib >> /etc/apt/sources.list
RUN curl -s http://packages.erlang-solutions.com/debian/erlang_solutions.asc | apt-key add -
RUN apt-get -y update
RUN apt-get -y install esl-erlang=1:16.b.3-2
RUN apt-get -y autoremove

# pull logplex source code
RUN git clone https://github.com/heroku/logplex.git /opt/logplex
WORKDIR /opt/logplex

# configure logplex
RUN ./rebar --config public.rebar.config get-deps compile

# add all files
ADD . .

EXPOSE 8001 8601

# Set the entry point script
ENTRYPOINT ["/entrypoint.bash"]

CMD ["bin/logplex"]
