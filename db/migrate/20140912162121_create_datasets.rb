class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :geoName
      t.integer :dataYear
      t.string :dataName
      t.references :user, index: true

      t.timestamps
    end
  end
end
