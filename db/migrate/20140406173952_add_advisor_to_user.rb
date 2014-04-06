class AddAdvisorToUser < ActiveRecord::Migration
  def change
  	add_column :users, :linkedin, :string
  	add_column :users, :shortsummary, :string
  	add_column :users, :longsummary, :text
  	add_column :users, :sector, :string
  	add_column :users, :startupexperience, :string
  	add_column :users, :bandwidth, :string
  	add_column :users, :stage, :string
  	add_column :users, :public, :boolean
  	add_column :users, :referredby, :string
  	add_column :users, :quality, :integer
  	add_column :users, :featured, :boolean
  	add_column :users, :advisor, :boolean
  	add_column :users, :avatar_file_name, :string
  	add_column :users, :avatar_content_type, :string
  	add_column :users, :avatar_file_size, :string
  	add_column :users, :avatar_updated_at, :datetime
  	add_column :users, :updates, :boolean
  	add_column :users, :idea, :boolean
  	add_column :users, :market, :boolean
  	add_column :users, :product, :boolean
  	add_column :users, :launch, :boolean
  	add_column :users, :revenue, :boolean
  	add_column :users, :profitable, :boolean
  	add_column :users, :scaling, :boolean
  	add_column :users, :sale, :boolean
  end
end


