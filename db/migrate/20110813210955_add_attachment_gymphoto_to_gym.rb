class AddAttachmentGymphotoToGym < ActiveRecord::Migration
  def self.up
    add_column :gyms, :gymphoto_file_name, :string
    add_column :gyms, :gymphoto_content_type, :string
    add_column :gyms, :gymphoto_file_size, :integer
    add_column :gyms, :gymphoto_updated_at, :datetime
  end

  def self.down
    remove_column :gyms, :gymphoto_file_name
    remove_column :gyms, :gymphoto_content_type
    remove_column :gyms, :gymphoto_file_size
    remove_column :gyms, :gymphoto_updated_at
  end
end
