n = gets.to_i
a = gets.split.map(&:to_i)
total = a.inject(:+)
tmp = 4611686018427387903
sumx = 0

0.upto(n - 2) do |i|
  sumx += a[i]
  tmp = [(2 * sumx - total).abs, tmp].min
end

puts tmp