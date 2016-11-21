class SuppColumnTickets < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :tickets
    add_column :users, :tickets, :integer, array: true, default: []
  end
end
