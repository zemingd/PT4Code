# describe Abc134D do
#   context 'test' do
#     it 'sample' do
#       expect(Abc134D.calc(3, [1, 0 ,0])).to match([1, [1]])
#       expect(Abc134D.calc(5, [0, 0, 0, 0, 0])).to match([0, []])
#     end
#   end
# end
class Abc134D
  def self.input()
    n = STDIN.gets.to_i
    b_array = STDIN.gets.split(/\s/).map(&:to_i)
    [n, b_array]
  end

  def self.output(m, result_array)
    puts m
    puts result_array.join(' ') unless result_array.empty?
  end

  def self.calc(n, b_array)
    box = b_array
    mod_box = box.map {|x| x % 2}
    m = mod_box.sum
    result_array =
        mod_box
            .map.with_index {|x, i| {index: i + 1, x: x}}
            .select {|o| o[:x] == 1}
            .map {|o| o[:index]}
    [m, result_array]
  end

  def self.main()
    n, b_array = input()
    m, result_array = calc(n, b_array)
    output(m, result_array)
  end
end

if __FILE__ == $0
  Abc134D.main
  exit
end