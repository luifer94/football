# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do 
	establishment = FactoryGirl.create(:establishment)
	field = FactoryGirl.create(:field,establishment: establishment)
	team = FactoryGirl.create(:team)
	players = Array.new
	savings = Array.new

	30.times do
		player = FactoryGirl.create(:player,team: team)
		saving = FactoryGirl.create(:saving,begin: Faker::Time.backward(1, :evening),end: Faker::Time.backward(1, :evening),player: player)	
		players << player
		savings << saving
		FactoryGirl.create(:savingfield,saving: saving,field: field)
	end

	savings.each do |savingingo|
		players.each do |playersingo|
			FactoryGirl.create(:attendance,player: playersingo,saving: savingingo)
		end
	end

end

