require 'pp'
n,k = gets.split.map &:to_i
s = gets.chomp
class Array
  def sum
    self.inject(&:+)
  end
end
# 1100
# 11111で終わる時ずれる
# 00000で始まる時ずれる
# 0011
# 00000で終わる時ずれる
# 11111で始まる時ずれる
p [
s.gsub(/^0+/){|a|?1 * a.size}.gsub(/1+$/){|a|?0 * a.size}.chars.map(&:to_i).chunk_while{|a,b|(a==0 && b==1).!}.to_a
.map(&:size).each_cons(k).map(&:sum).max,
s.gsub(/^1+/){|a|?0 * a.size}.gsub(/0+$/){|a|?1 * a.size}.chars.map(&:to_i).chunk_while{|a,b|(a==1 && b==0).!}.to_a
.map(&:size).each_cons(k).map(&:sum).max
].max
