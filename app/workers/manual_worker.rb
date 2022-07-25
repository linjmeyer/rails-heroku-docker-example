class ManualWorker
  include Sidekiq::Worker

  def perform(*args)
    logger.info("Lin's Manual Worker")
  end
end
