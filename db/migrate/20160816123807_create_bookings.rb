class CreateBookings < ActiveRecord::Migration[5.0]
  def change
    create_table :bookings do |t|
      t.references :monster, foreign_key: true
      t.references :user, foreign_key: true
      t.string :start_date
      t.string :end_date
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
