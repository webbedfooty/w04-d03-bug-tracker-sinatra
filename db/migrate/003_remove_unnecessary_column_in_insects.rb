class RemoveUnnecessaryColumnInInsects < ActiveRecord::Migration
  def change
    remove_column :insects, :where_we_saw_it, :string
  end
end
