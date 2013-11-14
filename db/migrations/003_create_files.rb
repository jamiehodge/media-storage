Sequel.migration do
  up do
    create_table :files do
      uuid_primary_key

      uuid_foreign_key :directory_id, :directories

      citext :name, null: false

      timestamps
      lock_version

      full_text_index :name
    end

    create_timestamp_trigger :files
  end

  down do
    drop_timestamp_trigger :files
    drop_table :files
  end
end
