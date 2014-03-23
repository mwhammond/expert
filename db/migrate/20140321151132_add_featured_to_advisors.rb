class AddFeaturedToAdvisors < ActiveRecord::Migration
  def change
    add_column :advisors, :featured, :boolean
  end
end
