class LapsController < ApplicationController
  def redirect(url, text)
  	redirect_to url, notice: text
  end
  def index
  	@laps = Lap.all
    @total_voltas = 4
    #Pilotos
    @pilotos = Lap.all.collect {|p| p.nome_piloto}
    @pilotos = @pilotos.uniq
    puts @pilotos

    #Descobrir a melhor volta da corrida
    melhorVolta = Lap.all.collect {|p| p.tempo_volta.strftime("%H:%M:%S:%L")}
    sort = melhorVolta.sort
    @menor = sort[0]

    # @laps.each_with_object({}) do |nome_piloto, id_volta|
    #   nome_piloto, id_volta = laps.values_at(:nome_piloto, :id_volta)
    #   puts nome_piloto
    # end

    # @piloto_menor = @laps.select { |attachment| attachment.tempo_volta.strftime("%H:%M:%S:%L") == menor}
    # puts menor
    # puts @piloto_menor

    #Descobrir a melhor volta de cada piloto
  


    #Calcular a velocidade média de cada piloto durante toda corrida

    #Descobrir quanto tempo cada piloto chegou após o vencedor


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
