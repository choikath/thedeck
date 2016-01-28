class AddUserIdsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :user_ids, :string, default: '[]'
  end
end
