APP="lin-learning-app"

# 1. Build the dockerfile (the dockerfile is the same so just build once, re-tag later)
docker build . -t linrails:latest

# 2. Re-tag the monolithic docker image into necessary proc types (web + workers)
PROCS="web worker"
PROCS_ARRAY=($PROCS)
for PROC in $PROCS_ARRAY
do
    echo "**** Tagging and pushing proc: $PROC ****"
    docker tag linrails:latest registry.heroku.com/$APP/$PROC
    docker push registry.heroku.com/$APP/$PROC
done

heroku container:release $PROCS