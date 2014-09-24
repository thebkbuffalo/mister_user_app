require 'httparty'
require 'pry'

module RandomUser

  def self.fetch
  10.times do
      user = HTTParty.get("http://api.randomuser.me/")
      User.create(
      email:          user["results"][0]["user"]["email"],
      name:           user["results"][0]["user"]["name"]["first"],
      gender:         user["results"][0]["user"]["gender"],
      picture:        user["results"][0]["user"]["picture"]["large"],
      DOB:            user["results"][0]["user"]["dob"].to_i,
      phone:          user["results"][0]["user"]["phone"],
      location:       user["results"][0]["user"]["location"]["state"],
      password:       user["results"][0]["user"]["password"]
      )
    end
      puts "10 users were created"
  end
end # end's module
