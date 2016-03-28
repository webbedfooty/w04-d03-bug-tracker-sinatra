class CreateInsectsTable < ActiveRecord::Migration
  def change
    create_table :insects do |t|
      t.string :name
      t.string :descripton
      t.string :location
      t.string :where_we_saw_it
    end
  end
end
