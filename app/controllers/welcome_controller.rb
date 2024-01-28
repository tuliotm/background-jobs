class WelcomeController < ApplicationController
  def index
  end

  def without_background_job
    Rails.logger.info ">>>>>> Iniciando o processamento... #{Time.now}"
    sleep 10
    Rails.logger.info ">>>>>> Processamento finalizado! #{Time.now}"
    redirect_to root_path, notice: "Processamento finalizado!"
  end

  def with_background_job
  end
end
