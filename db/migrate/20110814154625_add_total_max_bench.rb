class AddTotalMaxBench < ActiveRecord::Migration
  def self.up
    add_column :gyms, :totalBench, :integer
  end

  def self.down
    remove_column :gyms, :totalBench, :integer
  end
end
