class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  has_one :advisor, dependent: :destroy
  has_one :startup, dependent: :destroy
  	       

  def admin?
  	admin
  end 

  def advisor?
  	usertype == "advisor"
  end

   def startup?
  	usertype == "startup"
  end        
         
end
