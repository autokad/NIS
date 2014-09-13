class CreateGeoData < ActiveRecord::Migration
  def change
    create_table :geo_data do |t|
      t.integer :geoId
      t.integer :geoYear
      t.string :geoName
      t.string :geoValue
      t.integer :dataId
      t.integer :dataYear
      t.string :dataName
      t.float :dataValue

      t.timestamps
    end
  end
end
