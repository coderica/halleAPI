class AddJsTimeToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :converted_time, :string
  end
end
