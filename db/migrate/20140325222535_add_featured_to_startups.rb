class AddFeaturedToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :featured, :boolean
    add_column :startups, :public, :boolean
    add_column :startups, :casestudy, :boolean
  end
end
