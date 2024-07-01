n, k = gets.split.map(&:to_i)
prob = 0.0
(1..n).each do |i|
  tmp = 1.0
  ii = i
  while ii < k
    ii *= 2
    tmp /= 2
  end
  prob += tmp
end
puts prob/n