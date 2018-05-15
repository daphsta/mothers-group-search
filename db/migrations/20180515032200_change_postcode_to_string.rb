Hanami::Model.migration do
  change do
    alter_table :locations do
      set_column_type :postcode, String, null: false
    end
  end
end
