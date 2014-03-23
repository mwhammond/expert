class AddUpdatesToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :updates, :boolean
  end
end
