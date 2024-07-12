class AddImageToBag < ActiveRecord::Migration[7.1]
  def change
    add_column :bags, :image, :string
  end
end
