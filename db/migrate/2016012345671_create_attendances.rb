class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|

		t.boolean :gone
		t.float :fieldPrice
		t.float :fee
		t.references :player, index: true
		add_foreign_key :players, :attendances
		t.references :saving, index: true
		add_foreign_key :savings, :attendances
	    t.timestamps null: false
	end
  end
end
