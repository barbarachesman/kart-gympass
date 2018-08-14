class User < ApplicationRecord
	require 'csv'
	validates :user, :steps, :distance, :exercise, :sleep, :calories, presence: true

	def self.import(file)
		CSV.foreach(file.path, { encoding: "UTF-8", headers: true, header_converters: :symbol, converters: :all}) do |row|
			if User.exists?(user: row[:user])
				puts 'this user already exists'
			else
				User.create! row.to_hash
			end
		end
	end
end
