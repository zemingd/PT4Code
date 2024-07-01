require 'pp'
n, k = gets.split.map &:to_i
s = gets.chomp#.chars.map(&:to_i)
class Array
  def sum
    self.inject(&:+)
  end
end
p s.scan(/0+|1+/).each_cons(k*2+1).to_a
.map{|a|a.pop if a[-1].include?('0');a}
.map{|a|a.map(&:size).sum}.max || s.size
