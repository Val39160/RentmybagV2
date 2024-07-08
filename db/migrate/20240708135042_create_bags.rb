class CreateBags < ActiveRecord::Migration[7.1]
  def change
    create_table :bags do |t|
      t.string :brand
      t.string :state
      t.integer :capacity
      t.string :usage
      t.string :address
      t.boolean :availability
      t.float :daily-price
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
