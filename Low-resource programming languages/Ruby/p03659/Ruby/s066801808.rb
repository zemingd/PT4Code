n = gets.to_i
a = gets.chomp.split.map(&:to_i)
a_sum = Array.new(n, 0)
a_sum[0] = a[0]
1.step(n - 1) do |i|
  a_sum[i] = a_sum[i - 1] + a[i]
end
s = a_sum.pop
puts a_sum.map {|x| (x - (s - x)).abs }.min