Hanami::Model.migration do
  change do
    create_table :orders do
      primary_key :id
      foreign_key :customer_id, :customers, on_delete: :cascade, null: false
      foreign_key :order_item_id, :order_items, on_delete: :cascade, null: false
      foreign_key :payment_id, :payments, on_delete: :cascade, null: false
      foreign_key :address_id, :addresses, on_delete: :cascade, null: false

      column :closed_at, DateTime, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
