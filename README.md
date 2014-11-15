Docker Logplex
==============
[Logplex](https://github.com/heroku/logplex) is a log router made by [Heroku](www.heroku.com).

Configuration
=============
You can configure logplex via passing environment variables to the container at start time. Sane defaults are choosen for you. Here are the list of environment variables that can be set. See logplex documentation for what these variables do.

* INSTANCE\_NAME
* LOGPLEX\_CONFIG\_REDIS\_URL
* LOGPLEX\_REDGRID\_REDIS\_URL
* LOGPLEX\_STATS\_REDIS\_URL
* LOGPLEX\_SHARD\_URLS
* LOCAL\_IP
* LOGPLEX\_COOKIE
* LOGPLEX\_AUTH\_KEY
