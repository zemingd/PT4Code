n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ary_x = []
m  = Math.log(k)/Math.log(2)
0.upto(m+1) do |bit|
  ary_x[bit] = ((a.map { |e| (e >> bit) & 1 }.count(1)) < n/2.0) ? 1 : 0
end
x = ary_x.reverse.join.to_i(2) & k
puts a.map { |e| e ^ x }.inject(:+)
