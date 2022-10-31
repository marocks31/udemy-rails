require 'rspec'

=begin
  create a method called change in a class called ChangeMachine that will take number of cents and return an array of
  coins that will be your change. The goal is to return as few coins as possible. Assume that the highest denomination
  of coins will be a quarter (25 cents). For example: if the method receives 119, the result will be [25, 25, 25, 25, 10, 5, 1, 1, 1, 1]
=end


class ChangeMachine
  def change(cents)
    coin_types = [25, 10, 5, 1]
    coins = []
    coin_types.each do |coin_type|
      while cents >= coin_type
        coins << coin_type
        cents -= coin_type
      end
    end
    return coins
  end 
end 


Rspec.describe ChangeMachine do 
  describe '#change' do 
    it 'should return [1] when given 1' do
      machine = ChangeMachine.new
      expect(machine.change(1)).to eq([1])
    end 
    it 'should return [1 , 1] when given 2' do
      machine = ChangeMachine.new
      expect(machine.change(2)).to eq ([1, 1])
    end
    it 'should return [1, 1, 1] when given 3' do
      machine = ChangeMachine.new
      expect(machine.change(3)).to eq ([1, 1, 1])
    end
    it 'should return [5] when given 5' do
      machine = ChangeMachine.new
      expect(machine.change(5)).to eq([5])
    end
    it 'should return [5, 1] when given 6' do
      machine = ChangeMachine.new
      expect(machine.change(6)).to eq([5, 1])
    end
    it 'should return [10] when given 10' do
      machine = ChangeMachine.new
      expect(machine.change(10)).to eq([10])
    end
    it 'should return [10, 1] when given 11' do
      machine = ChangeMachine.new
      expect(machine.change(11)).to eq([10, 1])
    end
    it 'should return [25] when given 25' do
      machine = ChangeMachine.new
      expect(machine.change(25)).to eq([25])
    end





  end
end 
