class CreateFits < ActiveRecord::Migration
  def change
    create_table :fits do |t|
      t.string :fit

      t.timestamps

    end
  end
end
