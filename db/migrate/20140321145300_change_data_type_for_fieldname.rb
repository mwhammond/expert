class ChangeDataTypeForFieldname < ActiveRecord::Migration
 def change
    change_column :advisors, :startupExperience, :string
    change_column :advisors, :bandwidth, :string
    change_column :advisors, :stage, :string

  end
end
