class Renamegymid < ActiveRecord::Migration
  def self.up
    remove_column :gymposts, :gymid
    add_column :gymposts, :gym_id, :integer
  end

  def self.down
  end
end
