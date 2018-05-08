Hanami::Model.migration do
  change do
    create_table :users_groups do
      primary_key :id

      foreign_key :user_id, :users, null: false, on_delete: :cascade
      foreign_key :group_id, :groups, null: false, on_delete: :cascade

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
