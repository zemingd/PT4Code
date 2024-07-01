# require 'pp'
mod = 10 ** 9 + 7
n = gets.to_i
a = gets.split.map(&:to_i)

# p a
ans = 0
a2 = a.map do |aa|
  # p aa
  tmp = Array.new(60, 0)
  60.times do |i|
    tmp[i] = aa % 2
    aa /= 2
  end
  tmp
end
# p a2.transpose.map{|x|x.inject(:+)}.map{|x|x * (n - x)}
# p a2.transpose.map{|x|x.inject(:+)}.map{|x|x * (n - x)}.map.with_index{|x,i|x * (2**i % mod)}#.inject(:+) % mod
p a2.transpose.map{|x|x.inject(:+)}.map{|x|x * (n - x)}.map.with_index{|x,i|x * (2**i % mod)}.inject(:+) % mod
# 1 237 103715602
