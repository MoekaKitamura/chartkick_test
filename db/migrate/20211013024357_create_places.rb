class CreatePlaces < ActiveRecord::Migration[5.2]
  def change
    create_table :places do |t|
      t.string :code
      t.string :name_jp
      t.string :name_en
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
