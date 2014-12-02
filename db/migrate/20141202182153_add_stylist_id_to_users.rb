class AddStylistIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :stylist_id, :integer, :default => 0
  end
end
