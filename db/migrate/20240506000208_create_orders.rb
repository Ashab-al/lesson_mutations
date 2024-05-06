class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.references :product, null: false, foreign_key: true
      t.integer :quanity
      t.string :customer_name
      t.string :customer_email

      t.timestamps
    end
  end
end
