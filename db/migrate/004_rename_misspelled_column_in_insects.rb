class RenameMisspelledColumnInInsects < ActiveRecord::Migration
  def change
    rename_column :insects, :descripton, :description
  end
end
