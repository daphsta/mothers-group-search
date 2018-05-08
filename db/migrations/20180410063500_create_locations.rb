Hanami::Model.migration do
  change do
    create_table :locations do
      primary_key :id

      column :state, String, null: false
      column :postcode, Integer, null: false
      column :suburb, String, null: false
      column :longtitude, Float
      column :latitude, Float

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
