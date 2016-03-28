class CreateSeenByColumnInInsects < ActiveRecord::Migration
  def change
    add_column :insects, :seen_by, :string
  end
end
