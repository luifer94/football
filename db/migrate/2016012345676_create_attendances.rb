class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|

		t.boolean :gone
		t.float :fieldPrice
		t.float :fee
		t.references :player, index: true, foreign_key: true
		t.references :saving, index: true, foreign_key: true
	    t.timestamps null: false
	end
  end
end
