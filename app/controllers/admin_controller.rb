class AdminController < ApplicationController
  def index
	@total_eventos = Evento.count
  end

end
