class CreateWishlists < ActiveRecord::Migration[5.2]
  def change
    create_table :wishlists do |t|
      t.string :description
      t.float :price

      t.timestamps
    end
  end
end
