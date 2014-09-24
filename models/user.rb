# create_table(:users) do
#   primary_key :id
#   String :name, :size=>255, :null=>false
#   String :gender, :size=>10, :null=>false
#   String :picture, :size=>300, :null=>false
#   Integer :DOB, :null=>false
#   String :phone, :size=>15, :null=>false
#   String :location, :size=>255, :null=>false
#   String :password, :size=>255, :null=>false
# end

class User < Sequel::Model

end # end's user
