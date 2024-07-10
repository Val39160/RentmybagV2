class AddWeightToBags < ActiveRecord::Migration[7.1]
  def change
    add_column :bags, :weight, :float
  end
end
