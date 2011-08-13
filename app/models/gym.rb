class Gym < ActiveRecord::Base
  has_many :users
  
  has_attached_file :gymphoto, :styles => { :small => "150x150>" },
                    :url  => "/assets/products/:id/:style/:basename.:extension",
                    :path => ":rails_root/public/assets/products/:id/:style/:basename.:extension"

  validates_attachment_presence :gymphoto
  validates_attachment_size :gymphoto, :less_than => 5.megabytes
  validates_attachment_content_type :gymphoto, :content_type => ['image/jpeg', 'image/png']
  
  def numMembers
    users.count
  end 
end
