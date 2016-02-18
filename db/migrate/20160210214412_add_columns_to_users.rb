class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :needs_hipaa, :boolean, default: true
    add_column :users, :needs_csa, :boolean, default: true
    add_column :users, :needs_ipa, :boolean, default: true
    add_column :users, :done_hipaa, :boolean, default: false
    add_column :users, :done_csa, :boolean, default: false
    add_column :users, :done_ipa, :boolean, default: false
    add_column :users, :usertype, :string, default: 'Student'
    add_column :users, :title, :string, default: 'MD'
    add_column :users, :school, :string, default: 'Engineering'
  end
end
