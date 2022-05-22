class RemoveTitleFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :title, :string
  end
end
