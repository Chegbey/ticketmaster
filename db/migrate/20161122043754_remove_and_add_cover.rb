class RemoveAndAddCover < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :cover
    add_column :concerts, :cover, :string, :default => 'http://placehold.it/800x600'
  end
end
