class User < ActiveRecord::Base
	require 'csv'

	def self.import(file)
		CSV.foreach(file.path, headers: true) do |row|
			User.create(	unique_code: row.fields[0],
										relationship_to_child: row.fields[1] ? row.fields[1] : row.fields[2],
										child_age: row.fields[3],
										purchase_occasion: row.fields[4] ? row.fields[4] : row.fields[5],
										gender: row.fields[6],
										age: row.fields[7],
										has_children: row.fields[8],
										email: row.fields[9],
										started_survey_at: row.fields[10],
										submitted_survey_at: row.fields[11],
										network_id: row.fields[12]
									)
		end
	end
end
