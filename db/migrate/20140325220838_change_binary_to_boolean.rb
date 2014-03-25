class ChangeBinaryToBoolean < ActiveRecord::Migration
  def change
  	remove_column :startups, :public 
  	remove_column :startups, :featured
  	remove_column :startups, :casestudy
  end
end
