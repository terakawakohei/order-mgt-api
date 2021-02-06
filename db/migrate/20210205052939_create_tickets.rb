class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.integer :plan_id
      t.string :name
      t.string :switch_name
      t.integer :number_of_times
      t.integer :order
      t.string :comment

      t.timestamps
    end
  end
end
