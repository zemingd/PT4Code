n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ary_x = []
m  = k.bit_length
0.upto(m - 1) do |bit|
  ary_x[bit] = ((a.map { |e| (e >> bit) & 1 }.count(1)) < n/2.0) ? 1 : 0
end
x = ary_x.reverse.join.to_i(2)
if x > k
  msb = (1 << (k.bit_length - 1))
  x &= msb
  y = x ^ msb
  puts [a.map { |e| e ^ x }.inject(:+), a.map { |e| e ^ y }.inject(:+)].max
  exit 0
end

puts a.map { |e| e ^ x }.inject(:+)
