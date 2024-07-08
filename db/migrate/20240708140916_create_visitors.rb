class CreateVisitors < ActiveRecord::Migration[7.1]
  def change
    create_table :visitors do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :address
      t.string :password

      t.timestamps
    end
  end
end
