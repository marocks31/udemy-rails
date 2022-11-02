 users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]
 
module Crud
  require 'bcrypt'
  puts "Module CRUD activated"
  def Crud.create_hash_digest(password)
    BCrypt::Password.create(password)
  end
   
  def Crud.verify_hash_digest(password)
    BCrypt::Password.new(password)
  end
   
  def Crud.create_secure_users(list_of_users)
    list_of_users.each do |user_record|
      user_record[:password] = create_hash_digest(user_record[:password])
      puts "The encrypted password for user #{user_record[:username]} is #{user_record[:password]}"
    end
  end

  def Crud.authenticate_user(username, password, list_of_users)
    list_of_users.each do |user_record|
      if user_record[:username] == username && verify_hash_digest(user_record[:password]) == password
        return "Authentication passed #{user_record}"
      end 
    end
    "Credentials were not correct"
  end
end
