class Lap < ApplicationRecord
	require 'csv'
	# validate :id_volta, :nome_piloto, :tempo_volta, :hora, :velocidade_media

	def self.import(file)
		puts 'tests'

		CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
			if Lap.exists?(id_volta: row[:lap])
				puts 'this lap already exists'
			else
				Lap.create! row.to_hash
			end
		end
	end
end
