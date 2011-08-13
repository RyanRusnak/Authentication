class FixColumn < ActiveRecord::Migration
  def self.up
    rename_column :users, :gymId, :gym_id
  end

  def self.down
  end
end
