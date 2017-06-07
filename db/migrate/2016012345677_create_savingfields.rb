class CreateSavingfields < ActiveRecord::Migration
  def change
    create_table :savingfields do |t|

		t.references :saving, index: true, foreign_key: true
		t.references :field, index: true, foreign_key: true
	    t.timestamps null: false
	end
  end
end
