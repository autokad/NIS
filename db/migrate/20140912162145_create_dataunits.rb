class CreateDataunits < ActiveRecord::Migration
  def change
    create_table :dataunits do |t|
      t.string :geoValue
      t.float :dataValue
      t.references :dataset, index: true
      t.references :user, index: true

      t.timestamps
    end
  end
end
