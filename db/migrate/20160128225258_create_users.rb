class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email, unique: true
      t.boolean :admin, default: false
      t.string :session_key

      t.timestamps null: false
    end
  end
end
