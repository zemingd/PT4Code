n,k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i)
x = 0
0.upto(100) do |i|
  bin = 2 ** i
  break if bin > k
  bit_count = as.select{|a| a&bin>0 }.size
  x += bin if bit_count <= as.size/2
end
puts as.map{|a| a^x }.inject(:+)
