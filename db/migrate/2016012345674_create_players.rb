class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|

		t.string :name
		t.string :nickName
		t.references :team, index: true
		add_foreign_key :teams, :players
	    t.timestamps null: false
	end
  end
end
