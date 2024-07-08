class CreateBookings < ActiveRecord::Migration[7.1]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :bag, null: false, foreign_key: true
      t.date :rental_start
      t.date :rental_end
      t.float :rental_price
      t.string :status

      t.timestamps
    end
  end
end
