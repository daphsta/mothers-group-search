Hanami::Model.migration do
  change do
    create_table :groups do
      primary_key :id

      column :name, String, null: false
      column :interests, "text[]"
      column :active, TrueClass, default: false
      column :members_count, Integer, default: 0

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
