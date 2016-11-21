class AddColumnTicketsLeft < ActiveRecord::Migration[5.0]
  def change
    add_column :concerts, :tickets_left, :integer
  end
end
