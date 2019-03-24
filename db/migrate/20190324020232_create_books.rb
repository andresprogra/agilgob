class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :editorial
      t.string :year_edition
      t.string :isbn
      t.references :author, foreign_key: true
      t.references :shelf, foreign_key: true
      t.string :num_edition

      t.timestamps
    end
  end
end
