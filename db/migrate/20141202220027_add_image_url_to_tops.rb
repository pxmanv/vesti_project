class AddImageUrlToTops < ActiveRecord::Migration
  def change
    add_column :tops, :image_url, :string
  end
end
