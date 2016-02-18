class AddColumnsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :needs_irb, :boolean, default: false
    add_column :projects, :done_irb, :boolean, default: false
  end
end
