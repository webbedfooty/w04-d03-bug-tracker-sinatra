class CreateResearchersTable < ActiveRecord::Migration
  def change
    create_table :researchers do |t|
      t.string :name
      t.integer :age
    end
  end
end
