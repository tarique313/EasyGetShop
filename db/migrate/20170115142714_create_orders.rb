class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.text :body
      t.boolean :status

      t.timestamps
    end
  end
end
