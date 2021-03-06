class Startup < ActiveRecord::Base

  acts_as_followable
  acts_as_follower

	belongs_to :user
	  has_attached_file :avatar, :styles => { :medium => "360x240>", :thumb => "100x70>" }, :default_url => "/images/:style/missing.jpg"
  		validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
