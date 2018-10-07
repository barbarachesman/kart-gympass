class LapsController < ApplicationController
  def redirect(url, text)
  	redirect_to url, notice: text
  end
  def index
  	@laps = Lap.all
# 
#     @teste += [@laps.nome_piloto.to_s]
# @teste.save
  end
  def import
  	if params[:file]
  		Lap.import(params[:file])
  		redirect(root_url, "Dados importados com sucesso!")
  	else
  		redirect(root_url, "Por favor faça o upoad do arquivo .CSV")
  	end
  end
end
