# users array where username and password are stored
users = [
          { username: "mashrur", password: "password1" },
          { username: "jack", password: "password2" },
          { username: "arya", password: "password3" },
          { username: "jonshow", password: "password4" },
          { username: "heisenberg", password: "password5" }
        ]

#authentication method to check and verify if username/password combination exist 
def auth_user(username, password, list_of_users)
  list_of_users.each do |user_record|
    if user_record[:username] == username && user_record[:password] == password
      return user_record
    end
  end
"Credentials are not correct"
end

#program execution flow
puts "Welcome to the authenticator"
25.times { print '-'}
puts 
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

attempts = 1
while attempts < 4
  print "Username: "
  username = gets.chomp
  print "Password: "
  password = gets.chomp
  authentication = auth_user(username, password, users) #input pulling from original array of hashes
  puts authentication
  puts "press n to quit or any other key to continue"
  input = gets.chomp.downcase
  # if input == "n"
  #   break 
  # end
  break if input == "n" #cleaner if conditional than lines 37-39
  attempts += 1
end 
puts "You have exceeded the number of attempts" if attempts == 4

