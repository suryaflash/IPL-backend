namespace :import do 

	task teams: :environment do
		filename = "#{Rails.root}/Unt.csv"
		CSV.foreach(filename , headers: true) do |row|
		   # name, owner, manager, captain = row
			Team.create(name: row["Name"], owner: row["Owner"], manager: row["Manager"], captain: row["Captain"])
		end
	end 


	task players: :environment do
		filename = "#{Rails.root}/players.csv"
		CSV.foreach(filename , headers: true) do |row|
		   # name, owner, manager, captain = row
			Player.create(first_name: row["first_name"], 
						last_name: row["last_name"],
					    age: row["age"], 
					    dob: row["dob"].to_date,
					    role: row["role"],
					    nationality: row["nationality"],
					    team: row["team"],
					    batting_style: row["batting_style"],
					    bowling_style: row["bowling_style"])
		end
	end 


desc "Import teams from csv"
	task managers: :environment do
		filename = "#{Rails.root}/managers.csv"
		CSV.foreach(filename , headers: true) do |row|
		   # name, owner, manager, captain = row
			Manager.create(first_name: row["first_name"], 
						last_name: row["last_name"],
					    age: row["age"], 
					    dob: row["dob"].to_date,
					    nationality: row["nationality"],
					    team: row["team"])
		end
	end 
end