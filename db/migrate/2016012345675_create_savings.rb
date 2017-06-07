class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|

		t.date :date
		t.time :begin
		t.time :end
		t.references :player, index: true, foreign_key: true
	    t.timestamps null: false
	end
  end
end
