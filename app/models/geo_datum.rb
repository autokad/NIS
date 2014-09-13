class GeoDatum < ActiveRecord::Base
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			geo_hash = row.to_hash
			GeoDatum.create!(geo_hash)
		end
	end
end
