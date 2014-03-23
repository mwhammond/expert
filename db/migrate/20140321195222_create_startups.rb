class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name
      t.string :link
      t.string :email
      t.text :bio
      t.datetime :founded
      t.string :sector
      t.string :stage
      t.string :capital
      t.text :requests
      t.binary :public
      t.binary :featured
      t.binary :casestudy
      t.integer :quality
      t.string :avatar_file_name
      t.string :avatar_content_type
      t.string :avatar_file_size
      t.datetime :avatar_updated_at

      t.timestamps
    end
  end
end
