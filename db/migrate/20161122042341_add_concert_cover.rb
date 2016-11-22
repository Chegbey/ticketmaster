class AddConcertCover < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :cover, :string, :default => 'http://placehold.it/800x600'
  end
end
