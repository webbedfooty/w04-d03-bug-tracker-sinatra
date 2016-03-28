class CreateInsectsTable < ActiveRecord::Migration
  def change
    create_table :insects do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :seen_by
    end
  end
end
