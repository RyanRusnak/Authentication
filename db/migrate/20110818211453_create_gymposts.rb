class CreateGymposts < ActiveRecord::Migration
  def self.up
    create_table :gymposts do |t|
      t.string :title
      t.text :body
      t.integer :gymid

      t.timestamps
    end
  end

  def self.down
    drop_table :gymposts
  end
end
