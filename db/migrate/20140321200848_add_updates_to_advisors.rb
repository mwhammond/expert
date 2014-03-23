class AddUpdatesToAdvisors < ActiveRecord::Migration
  def change
    add_column :advisors, :updates, :boolean
  end
end
