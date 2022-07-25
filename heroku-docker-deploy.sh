# Space seperated list of process types which will deploy as individual dynos
# Note: All must have a Dockerfile.<proc> first!
PROCS="web worker"
echo "building & pushing images"
heroku container:push --recursive
echo "releasing pushed images"
heroku container:release $PROCS