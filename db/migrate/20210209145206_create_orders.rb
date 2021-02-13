class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :tel_num, null: false
      t.integer :ticket_id
      t.timestamps
    end
  end
end
