Hanami::Model.migration do
  change do
    create_table :stocks do
      primary_key :id
      foreign_key :product_id, :products, on_delete: :cascade, null: false

      column :quantity, Integer, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      check { quantity > 0 }
    end
  end
end
