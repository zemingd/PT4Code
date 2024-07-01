n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ary_x = []
m  = Math.log2(k)
0.upto(m+1) do |bit|
  ary_x[bit] = ((a.map { |e| (e >> bit) & 1 }.count(1)) < n/2.0) ? 1 : 0
end
x = ary_x.reverse.join.to_i(2)
if x > k
  all_k = ('1' * k.bit_length).to_i(2)
  x = x & all_k
  msb = (1 << (x.bit_length - 1))
  x = x ^ msb
  puts [a.map { |e| e ^ x }.inject(:+), a.map { |e| e ^ msb }.inject(:+)].max
  exit 0
end

puts a.map { |e| e ^ x }.inject(:+)
