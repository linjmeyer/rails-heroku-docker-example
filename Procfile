web: bundle exec puma -p $PORT -w ${PUMA_WORKERS:-1} -t ${PUMA_MIN_THREADS:-4}:${PUMA_MAX_THREADS:-16}
worker: bundle exec sidekiq