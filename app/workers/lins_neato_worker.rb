class LinsNeatoWorker
  include Sidekiq::Worker

  def perform(*args)
    logger.info("HELLO WORLD - Lin's Cron worker")
  end
end
