class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.string :program, null: false
      t.string :text
      t.string :venue,        null: false
      t.string :date,         null: false
      t.string :time,         null: false
      t.integer :price, null: false
      t.integer :remaining, null: false
      t.timestamps
    end
  end
end
