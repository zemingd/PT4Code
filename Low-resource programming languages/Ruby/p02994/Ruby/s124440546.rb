# require 'rspec'
# require_relative './abc131_b'
# 
# describe Abc131B do
#   context 'test' do
#     it 'sample' do
#       expect(Abc131B.calc(5,2)).to be(18)
#       expect(Abc131B.calc(3,-1)).to be(0)
#       expect(Abc131B.calc(30,-50)).to be(-1044)
#     end
#   end
# end
class Abc131B
  def self.input()
    n, l = STDIN.gets.split.map(&:to_i)
    [n, l]
  end

  def self.output(result)
    puts result
  end

  def self.calc(n, l)
    apple_list = n.times.map { |i| l + (i+1) -1 }
    min_value = apple_list.min_by{|a| a.abs }
    apple_list.sum - min_value
  end

  def self.main()
    n, l = input()
    result = calc(n, l)
    output(result)
  end
end

if __FILE__ == $0
  Abc131B.main
  exit
end