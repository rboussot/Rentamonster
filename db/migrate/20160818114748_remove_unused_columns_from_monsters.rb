class RemoveUnusedColumnsFromMonsters < ActiveRecord::Migration[5.0]
  def change
    remove_column :monsters, :birthdate
    remove_column :monsters, :size
    remove_column :monsters, :weight
    remove_column :monsters, :description
    remove_column :monsters, :food
    remove_column :monsters, :exercise
  end
end
