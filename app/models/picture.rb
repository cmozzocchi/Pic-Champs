class Picture < ActiveRecord::Base
  attr_accessible :user_id, :title, :image, :url, :votes_count
  
  belongs_to :user

  has_many :votes

  mount_uploader :image, ImageUploader
end
