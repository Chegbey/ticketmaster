class SuppColumnCommentConcert < ActiveRecord::Migration[5.0]
  def change
    remove_column :concerts , :comment
  end
end
