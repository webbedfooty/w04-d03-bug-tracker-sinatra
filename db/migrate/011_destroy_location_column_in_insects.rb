class DestroyLocationColumnInInsects < ActiveRecord::Migration
  def change
    remove_column :insects, :location, :string
  end
end
