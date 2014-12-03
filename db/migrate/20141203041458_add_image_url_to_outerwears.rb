class AddImageUrlToOuterwears < ActiveRecord::Migration
  def change
    add_column :outerwears, :image_url, :string
  end
end
