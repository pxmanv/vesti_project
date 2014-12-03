class AddImageUrlToShoes < ActiveRecord::Migration
  def change
    add_column :shoes, :image_url, :string
  end
end
