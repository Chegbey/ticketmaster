class RemoveColumnTickets < ActiveRecord::Migration[5.0]
  def change
      remove_column :users, :tickets
      add_column :users , :tickets, :string, array: true, default:[]
  end
end
