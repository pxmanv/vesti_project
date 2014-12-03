class AddImageUrlToAccessories < ActiveRecord::Migration
  def change
    add_column :accessories, :image_url, :string
  end
end
