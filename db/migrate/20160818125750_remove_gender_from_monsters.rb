class RemoveGenderFromMonsters < ActiveRecord::Migration[5.0]
  def change
    remove_column :monsters, :gender
  end
end
