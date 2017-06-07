class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|

		t.string :name
		t.float :price
		t.integer :size
		t.references :establishment, index: true, foreign_key: true
	    t.timestamps null: false
	end
  end
end
