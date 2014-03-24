class AddIdeaToStartups < ActiveRecord::Migration
  def change
    add_column :startups, :idea, :binary
    add_column :startups, :market, :binary
    add_column :startups, :product, :binary
    add_column :startups, :launch, :binary
    add_column :startups, :revenue, :binary
    add_column :startups, :profitable, :binary
    add_column :startups, :scaling, :binary
    add_column :startups, :sale, :binary
  end
end
