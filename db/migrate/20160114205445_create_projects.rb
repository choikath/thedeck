class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :subtitle
      t.string :score
      t.string :oldscore
      t.text :description
      t.boolean :metricLOS
      t.boolean :new
      t.datetime :datecreated
      t.datetime :dateunderreview
      t.datetime :datereviewed
      t.boolean :approved
      t.datetime :dateapproved
      t.datetime :dateedited
      t.string :sendto
      t.boolean :ondeck
      t.boolean :exists
      t.boolean :visiblepenn
      t.boolean :visibleRoy
      t.boolean :visibleBrian
      t.boolean :visibleDamien
      t.boolean :visibleBill
      t.boolean :visibleNeha
      t.boolean :visibleSubha
      t.boolean :visiblemhealth

      t.timestamps null: false
    end
  end
end
