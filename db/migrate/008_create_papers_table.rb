class CreatePapersTable < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :researcher_id
      t.integer :insect_id
      t.string :title
      t.text :text
    end
  end
end
