n, m, c = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)

puts (n.times.count do
  [gets.split.map(&:to_i), bs].transpose.inject(0){|sum, e| sum + e[0]*e[1]} + c > 0
end)
