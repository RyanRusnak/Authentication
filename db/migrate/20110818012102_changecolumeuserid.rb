class Changecolumeuserid < ActiveRecord::Migration
  def self.up
    add_column :userposts, :user_id, :integer
  end

  def self.down
  end
end
