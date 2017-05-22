Hanami::Model.migration do
  change do
    create_table :customers do
      primary_key :id
      foreign_key :address_id, :addresses, on_delete: :cascade, null: false

      column :name, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
