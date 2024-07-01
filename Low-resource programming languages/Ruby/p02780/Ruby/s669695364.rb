n, k = gets.chomp.split.map(&:to_i)
p = gets.chomp.split.map(&:to_r)

sum = []*n
n.times do |i|
  sum[i] = (p[i] + 1) / 2
end

max = 0
sum.each_cons(k) do |q|
  max = [max, q.inject(&:+)].max
end
puts max.to_f