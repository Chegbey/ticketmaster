class AddMusicTypeConcert < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :music_type, :string
  end
end
