dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  somehash[key]
end
 
# Execution flow
loop do
  puts "Do you want to find the area code based on a city name? (Y/N)"
  input = gets.chomp.downcase
  break if input != "y"
  puts "Which city do you want the area code for?" 
  puts get_city_names(dial_book)
  puts "Enter your selected city:"
  city_input = gets.chomp.downcase
  if dial_book.include?(city_input)
    puts "The area code for #{city_input} is #{get_area_code(dial_book,city_input)}."
    else puts "You entered an unavailable city name."
  end 
# Write your program execution code here
end
 
