require 'rspec'

=beginPrint integers 1 to 100, but print "Fizz" if integer is divisible by 3,
"Buzz" if an integer is divisible by 5, 
and "FizzBuzz" if an integer is divisible by both 3 and 5.
=end

class Fizzbuzz
  def solve_fb(number)
    return "FizzBuzz" if number % 3 == 0 && number % 5 == 0
    return "Fizz" if number % 3 == 0
    return "Buzz" if number % 5 == 0
    return number
  end

  def run
    (1..100).each do |number|
      puts solve_fb(number)
    end 
  end
end

fizzbuzz = FizzBuzz.new
fizzbuzz.run

Rspec.describe FizzBuzz do 
  describe '#solve_fb' do
   it "should return 1 if 1 is given" do 
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(1)).to eq(1)
   end
   it "should return 2 if 2 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(2)).to eq(2)
   end
   it "should return 'Fizz' if 3 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(3)).to eq("Fizz")
   end
   it "should return 'Buzz' if 5 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(5)).to eq("Buzz")
   end
   it "should return 'Fizz' if 6 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(6)).to eq("Fizz")
   end 
   it "should return 'Buzz' if 10 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(10)).to eq("Buzz")
   end 
   it "should return 'FizzBuzz' if 15 is given" do
    fizzbuzz = FizzBuzz.new
    expect(fizzbuzz.solve_fb(15)).to eq("FizzBuzz")
   end 
  end
end
