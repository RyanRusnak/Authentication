class AddLiftsToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :maxSquat, :integer
    add_column :users, :maxBench, :integer
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :weight, :integer
  end

  def self.down
    remove_column :users, :maxSquat
    remove_column :users, :maxBench, :integer
    remove_column :users, :age, :integer
    remove_column :users, :height, :integer
    remove_column :users, :weight, :integer
  end
end
