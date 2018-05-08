Hanami::Model.migration do
  change do
    alter_table :users do
      add_column :password, String, null: false
    end
  end
end
