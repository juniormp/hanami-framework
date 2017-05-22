Hanami::Model.migration do
  change do
    create_table :products do
      primary_key :id

      column :title, String, null: false
      column :price, Float, null: false
      column :book_launch, Date, null: false
      column :publishing_company, String, null: false
      column :have_reprints, FalseClass, null: false
      column :number, Integer, null: false
      column :have_overcoat, FalseClass, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false

      check { price > 0 
              number > 0 }
    end
  end
end
