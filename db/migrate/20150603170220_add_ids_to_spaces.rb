class AddIdsToSpaces < ActiveRecord::Migration
  def change
    add_column :spaces, :poster_id, :integer
    add_column :spaces, :claimer_id, :integer
  end
end
