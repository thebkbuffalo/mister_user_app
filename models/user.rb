

# create_table(:users) do
#   primary_key :id
#   String :email, :size=>128, :null=>false
#   String :name, :size=>255, :null=>false
#   String :gender, :size=>10, :null=>false
#   String :picture, :size=>300, :null=>false
#   Integer :DOB, :null=>false
#   String :phone, :size=>15, :null=>false
#   String :location, :size=>255, :null=>false
#   String :password, :size=>255, :null=>false
# end

class User < Sequel::Model

  def age_difference
    Time.now.year - Time.at(self.DOB).year
  end

  def split_name
    name.split(/ /)[0]
  end

  def male?
    gender == "male"
  end

  def female?
    gender == "female"
  end

  def mr?
    name.split == "mr"
  end

  def ms?
    name.split == "ms"
  end

  def miss?
    name.split == "miss"
  end

  def mrs?
    name.split == "mrs"
  end

  def adult?
    age_difference >= 18
  end

  def boomer?
    age_difference == [50..68]
  end

  def teen?
    age_difference == [13..18]
  end

  def tween?
    age_difference == [11..12]
  end

  def child?
    age_difference == [4..10]
  end

  def toddler?
    age_difference == [1..3]
  end

  def baby?
    age_difference == [0..1]
  end





end # end's user
