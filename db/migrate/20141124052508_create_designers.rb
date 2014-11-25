class CreateDesigners < ActiveRecord::Migration
  def change
    create_table :designers do |t|
      t.string :designer

      t.timestamps

    end
  end
end
