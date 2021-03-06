class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_many :startup

  acts_as_followable
  acts_as_follower

  has_attached_file :avatar, :styles => { :medium => "150x200>", :thumb => "150x200>" }, :default_url => "/images/:style/missing.jpg"
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/


  	       

  def admin?
  	admin
  end 

         
end
