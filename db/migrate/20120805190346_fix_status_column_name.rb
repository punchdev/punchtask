class FixStatusColumnName < ActiveRecord::Migration
  def change
      remove_column :lists, :status
      add_column :lists, :week, :boolean
  end
end
