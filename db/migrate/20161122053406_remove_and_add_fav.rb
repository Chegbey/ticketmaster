class RemoveAndAddFav < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :fav
    add_column :users, :fav, :string
  end
end
