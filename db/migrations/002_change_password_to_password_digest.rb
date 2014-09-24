# db/migrations/002_changes_password_to_password_digest

Sequel.migration do


    drop_column :users, :password


    add_column :users, :password_digest, :size=>225, :null=>false

end # end's sequel.migration
