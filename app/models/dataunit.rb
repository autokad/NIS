class Dataunit < ActiveRecord::Base
  belongs_to :dataset
  belongs_to :user
  
	require 'csv'
	
	def self.import(file, dataset_id, user_id)
		CSV.foreach(file.path, headers: true) do |row|
			data_hash = row.to_hash.merge(dataset_id: dataset_id)
			
			Dataunit.create!(data_hash.to_hash.merge(user_id: user_id))
		end
	end
end
