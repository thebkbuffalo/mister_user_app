# db/migrations/002_changes_password_to_password_digest

Sequel.migration do
  change do
    alter_table(:users) do
      drop_column :password
      add_column(:password_digest, String)
    end
  end
end
