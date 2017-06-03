class CreateSavingfields < ActiveRecord::Migration
  def change
    create_table :savingfields do |t|

		t.references :saving, index: true
		add_foreign_key :savings, :savingfields
		t.references :field, index: true
		add_foreign_key :fields, :savingfields
	    t.timestamps null: false
	end
  end
end
