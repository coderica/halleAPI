class AddJsTimeToSpaces < ActiveRecord::Migration
  def change
  	add_column :spaces, :converted_time, :decimal 
  end
end
