class FixTypeColumnName < ActiveRecord::Migration
  def change
    rename_column :lists, :type, :status
  end
end
