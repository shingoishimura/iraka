class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :program, null: false
      t.string :text
      t.string :venue
      t.string :date
      t.string :time
      t.integer :price
      t.integer :remaining
      t.timestamps
    end
  end
end
