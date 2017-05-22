Hanami::Model.migration do
  change do
    create_table :invoices do
      primary_key :id
      foreign_key :order_id, :orders, on_delete: :cascade, null: false
      foreign_key :address_id, :addresses, on_delete: :cascade, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
