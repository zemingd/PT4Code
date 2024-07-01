
# describe Abc134A do
#   context 'test' do
#     it 'sample' do
#       expect(Abc134A.calc(4)).to be(48)
#       expect(Abc134A.calc(15)).to be(675)
#       expect(Abc134A.calc(80)).to be(19200)
#     end
#   end
# end

class Abc134A
  def self.input()
    password_string = STDIN.gets.to_i
  end

  def self.output(result)
    puts result
  end

  def self.calc(r)
    3 * r * r
  end

  def self.main()
    r = input()
    result = calc(r)
    output(result)
  end
end

if __FILE__ == $0
  Abc134A.main
  exit
end