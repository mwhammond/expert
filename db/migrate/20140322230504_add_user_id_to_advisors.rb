class AddUserIdToAdvisors < ActiveRecord::Migration
  def change
    add_column :advisors, :user_id, :integer
  end
end
