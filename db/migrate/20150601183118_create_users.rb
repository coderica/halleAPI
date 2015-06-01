class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :oauth_id
    	t.decimal :spaces_posted, default: 5
    	t.decimal :spaces_consumed, default: 0
    	t.boolean :can_consume, default: true
    	t.string :home
    	t.string :work

      t.timestamps null: false
    end
  end
end