class AddTicket < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.belongs_to :concert, index: true
      t.integer :ticket_id
      t.timestamps
    end

  end
end
