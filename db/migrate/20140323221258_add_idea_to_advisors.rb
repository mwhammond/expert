class AddIdeaToAdvisors < ActiveRecord::Migration
  def change
    add_column :advisors, :idea, :binary
    add_column :advisors, :market, :binary
    add_column :advisors, :product, :binary
    add_column :advisors, :launch, :binary
    add_column :advisors, :revenue, :binary
    add_column :advisors, :profitable, :binary
    add_column :advisors, :scaling, :binary
    add_column :advisors, :sale, :binary
  end
end
