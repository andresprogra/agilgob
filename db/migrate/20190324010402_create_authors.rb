class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :last_name
      t.string :nacionality
      t.text :review

      t.timestamps
    end
  end
end
