# Ternary Operator:
# classic if conditional:

number_of_people = 0 
if number_of_people > 1
  (puts "buy food")
else 
  (puts "do nothing")
end

# ternary:
number_of_people = 0
number_of_people > 1 ? (puts "buy food") : (puts "do nothing")
# "do nothing"

#syntax: 
# condition ? true : false

p "armchair".size > 4 ? "More than 4 characters" : "Less than 4 characters"

p "".empty? ? "yes" : "no"

# assigning result of ternary expression to a variable

p a = 4 > 5 ? "yes" : "no"

#be careful with spaces, use parenthesis

10 > 5 ? (puts "yes") : (puts "no")

# this example below will not work:
# 10 > 5 ? puts "yes" : puts "no"
