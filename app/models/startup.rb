class Startup < ActiveRecord::Base

	belongs_to :user
	  has_attached_file :avatar, :styles => { :medium => "360x240>", :thumb => "100x70>" }, :default_url => "/images/:style/missing.png"
  		validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/
end
