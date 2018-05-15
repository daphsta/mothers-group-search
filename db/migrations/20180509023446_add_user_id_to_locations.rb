Hanami::Model.migration do
  change do
    alter_table :locations do
      add_foreign_key :user_id, :users, on_delete: :cascade
    end
  end
end
