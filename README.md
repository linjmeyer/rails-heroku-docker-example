# Dockerfiles & Procs

Each Heroku Process (ie: dyno) needs it's own Dockerfile.  They are should follow the convention `Dockerfile.<proc>` for Heroku CLI to work with them.  For example [Dockerfile.web](Dockerfile.web) defines the web process Dockerfile.worker](Dockerfile.worker) defines a worker process.  There will be some redundancies in these Dockerfiles that can't easily be avoided.

# Deploying

See [heroku-docker-deploy.sh](heroku-docker-deploy.sh) for deploy scripts
