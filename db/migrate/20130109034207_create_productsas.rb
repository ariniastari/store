class CreateProductsas < ActiveRecord::Migration
  def change
    create_table :productsas do |t|
      t.string :name
      t.integer :price

      t.timestamps
    end
  end
end
