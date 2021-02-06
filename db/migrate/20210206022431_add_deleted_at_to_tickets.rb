class AddDeletedAtToTickets < ActiveRecord::Migration[6.0]
  def change
    add_column :tickets, :deleted_at, :datetime
  end
end
