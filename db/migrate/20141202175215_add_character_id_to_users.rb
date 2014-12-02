class AddCharacterIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :character_id, :integer, :default => 0
  end
end
