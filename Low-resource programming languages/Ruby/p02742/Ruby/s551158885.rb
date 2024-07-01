a, b = gets.chop.split.map(&:to_i)
res = 0
(a*b).times do |n|
  res += 1 if (n+1).odd?
end
puts res
