Hanami::Model.migration do
  change do
    create_table :order_items do
      primary_key :id
      foreign_key :product_id, :products, on_delete: :cascade, null: false

      column :quantity, Integer, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
