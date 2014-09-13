class CreateMaps < ActiveRecord::Migration
  def change
    create_table :maps do |t|
      t.string :name
      t.references :user, index: true
      t.references :dataset, index: true

      t.timestamps
    end
  end
end
