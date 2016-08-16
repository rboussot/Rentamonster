class CreateMonsters < ActiveRecord::Migration[5.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.references :user
      t.string :title
      t.string :species
      t.string :gender
      t.string :birthdate
      t.float :size
      t.float :weight
      t.string :behavior
      t.text :description
      t.string :food
      t.string :exercise
      t.boolean :availability
      t.float :price

      t.timestamps
    end
  end
end
