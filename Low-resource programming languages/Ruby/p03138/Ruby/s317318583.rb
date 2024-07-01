n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ary_x = []
m  = k.bit_length
0.upto(m - 1) do |bit|
  c = a.map { |e| (e >> bit) & 1 }
  ary_x[bit] = (c.count(1) > c.count(0)) ? 0 : 1
end
x = ary_x.reverse.join.to_i(2)
if x > k
  msb = (1 << (k.bit_length - 1))
  x &= msb
end

puts a.map { |e| e ^ x }.inject(:+)
