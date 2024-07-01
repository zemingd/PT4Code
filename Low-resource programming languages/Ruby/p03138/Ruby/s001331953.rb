n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ary_x = []
m  = Math.log2(k)
0.upto(m+1) do |bit|
  ary_x[bit] = ((a.map { |e| (e >> bit) & 1 }.count(1)) < n/2.0) ? 1 : 0
end
x = ary_x.reverse.join.to_i(2)
msb = '1' + ('0' * (k.bit_length - 1))
if x > k
  x = x & ('1' * Math.log2(k).ceil).to_i(2)
  puts max(a.map { |e| e ^ x }.inject(:+), a.map { |e| e ^ msb }.inject(:+))
  exit 0
end

puts a.map { |e| e ^ x }.inject(:+)
