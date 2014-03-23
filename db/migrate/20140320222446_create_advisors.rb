class CreateAdvisors < ActiveRecord::Migration
  def change
    create_table :advisors do |t|
      t.string :name
      t.string :linkedin
      t.text :summary
      t.string :sector
      t.integer :startupExperience
      t.integer :bandwidth
      t.integer :stage
      t.text :expertise
      t.boolean :public
      t.string :referred
      t.integer :quality
      t.string :email

      t.timestamps
    end
  end
end
