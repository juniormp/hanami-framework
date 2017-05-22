Hanami::Model.migration do
  change do
    create_table :payment_methods do
      primary_key :id

      column :type, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
