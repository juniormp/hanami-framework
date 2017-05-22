Hanami::Model.migration do
  change do
    create_table :addresses do
      primary_key :id

      column :Street, String, null: false
      
      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
