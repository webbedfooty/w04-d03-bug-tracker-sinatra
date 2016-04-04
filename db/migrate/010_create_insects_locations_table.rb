class CreateInsectsLocationsTable < ActiveRecord::Migration
  def change
    create_join_table :insects, :locations
  end
end
