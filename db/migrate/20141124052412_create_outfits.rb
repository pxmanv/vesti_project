class CreateOutfits < ActiveRecord::Migration
  def change
    create_table :outfits do |t|
      t.integer :top_id
      t.integer :bottom_id
      t.integer :outerwear_id
      t.integer :shoe_id
      t.integer :accessory_id

      t.timestamps

    end
  end
end
