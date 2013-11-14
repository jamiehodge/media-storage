Sequel.migration do
  up do
    create_table :directories do
      uuid_primary_key

      citext :name, null: false

      timestamps
      lock_version

      full_text_index :name
    end

    create_timestamp_trigger :directories
  end

  down do
    drop_timestamp_trigger :directories
    drop_table :directories
  end
end
