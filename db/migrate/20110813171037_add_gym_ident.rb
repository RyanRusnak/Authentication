class AddGymIdent < ActiveRecord::Migration
  def self.up
    add_column :users, :gymId, :integer
  end

  def self.down
    remove_column :users, :gymId, :integer
  end
end
