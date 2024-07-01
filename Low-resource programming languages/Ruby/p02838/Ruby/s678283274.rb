n = gets.to_i
a = gets.split.map(&:to_i)
len = a.max.to_s(2).length

ans = 0
len.times do |l|
  base = 2 ** l
  n_1 = a.inject(0) { |acc, cur| acc + cur[l] }
  ans += (n - n_1) * n_1 * base
end
puts ans % 1000000007
