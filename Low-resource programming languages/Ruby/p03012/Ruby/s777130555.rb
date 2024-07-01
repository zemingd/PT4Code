n=gets.chomp.to_i
w=gets.chomp.split.map(&:to_i)

a=(1...n).map do |t|
  a1 = w[0..t]
  a2 = w[(t+1)..n]
  s1 = a1.sum
  s2 = a2.sum
  (s1-s2).abs
end

puts a.min