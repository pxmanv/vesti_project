class AddImageUrlToBottoms < ActiveRecord::Migration
  def change
    add_column :bottoms, :image_url, :string
  end
end
