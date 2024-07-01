n = gets.to_i
A = gets.split.map(&:to_i)

b = []

n.times do |i|
  b.push A[i]
  b.reverse!
end

puts b.join(' ')