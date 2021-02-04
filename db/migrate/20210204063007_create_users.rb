class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :switch_name
      t.integer :order
      t.string :date
      t.integer :number_of_times

      t.timestamps
    end
  end
end
