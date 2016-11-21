class AddColumnTicket < ActiveRecord::Migration[5.0]
  def change
    add_column :users , :tickets, :integer, array: true, default: []
  end
end
