class Combi
  def initialize(sum)
    @sum = sum
  end

  attr_accessor :sum

  def calc(num)
    ret = 0

    (0..9).to_a.repeated_permutation(num).each do |ary|
      ret += 1 if ary.inject(:+) == @sum
    end

    return ret
  end
end

while line = gets
  puts Combi.new(line.to_i).calc(4)
end