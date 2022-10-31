class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def power(number, exponent)
    return number ** exponent
  end
end 
               #class name #do starts off a block of code
RSpec.describe Calculator do
  # running function against add function
  describe '#add' do
    # string should tell what test is going to do
    it 'should return sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(1,3)
      expect(result).to eq(4)
    end
  end
end
