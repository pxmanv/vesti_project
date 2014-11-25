class CreateShoes < ActiveRecord::Migration
  def change
    create_table :shoes do |t|
      t.integer :name_id
      t.integer :designer_id
      t.integer :season_id
      t.integer :fit_id
      t.integer :color_id
      t.integer :fabric_id
      t.integer :occasion_id

      t.timestamps

    end
  end
end
