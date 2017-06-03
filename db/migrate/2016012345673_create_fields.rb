class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|

		t.string :name
		t.float :price
		t.integer :size
		t.references :establishment, index: true
		add_foreign_key :establishments, :fields
	    t.timestamps null: false
	end
  end
end
