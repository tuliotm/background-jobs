class UsersCleanupJob < ApplicationJob
  queue_as :users

  def perform(time_in_seconds = 10)
    Rails.logger.info ">>>>>> Iniciando o processamento... #{Time.now}"
    sleep time_in_seconds
    Rails.logger.info ">>>>>> Processamento finalizado! #{Time.now}"
  end
end
