class CreateFabrics < ActiveRecord::Migration
  def change
    create_table :fabrics do |t|
      t.string :fabric

      t.timestamps

    end
  end
end
