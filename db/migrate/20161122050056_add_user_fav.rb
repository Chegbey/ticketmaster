class AddUserFav < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fav, :string, array: true, default: []
  end
end
