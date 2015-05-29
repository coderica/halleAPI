class CreateSpaces < ActiveRecord::Migration
  def change
    create_table :spaces do |t|
    	t.decimal :longitude
    	t.decimal :latitude
    	t.boolean :active, default: true
    	t.string :note

      t.timestamps null: false
    end
  end
end
