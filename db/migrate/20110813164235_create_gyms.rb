class CreateGyms < ActiveRecord::Migration
  def self.up
    create_table :gyms do |t|
      t.string :name
      t.string :address
      t.integer :numMembers

      t.timestamps
    end
  end

  def self.down
    drop_table :gyms
  end
end
