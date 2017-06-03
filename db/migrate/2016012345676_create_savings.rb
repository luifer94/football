class CreateSavings < ActiveRecord::Migration
  def change
    create_table :savings do |t|

		t.date :date
		t.time :begin
		t.time :end
		t.references :player, index: true
		add_foreign_key :players, :savings
	    t.timestamps null: false
	end
  end
end
