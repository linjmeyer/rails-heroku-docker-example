class WelcomeController < ApplicationController
    def index
        logger.info("Running Lin's manual worker")
        Sidekiq::Client.push('class' => 'ManualWorker', 'args' => [])
    end
end
