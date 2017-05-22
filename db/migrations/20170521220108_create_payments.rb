Hanami::Model.migration do
  change do
    create_table :payments do
      primary_key :id
      foreign_key :invoice_id, :invoices, on_delete: :cascade, null: false
      foreign_key :order_id, :orders, on_delete: :cascade, null: false
      foreign_key :payment_method_id, :payment_methods, on_delete: :cascade, null: false

      column :authorizathion_number, Integer, null: false
      column :amount, Float, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
