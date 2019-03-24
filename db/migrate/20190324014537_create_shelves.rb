class CreateShelves < ActiveRecord::Migration[5.2]
  def change
    create_table :shelves do |t|
      t.string :pasillo
      t.string :levels

      t.timestamps
    end
  end
end
