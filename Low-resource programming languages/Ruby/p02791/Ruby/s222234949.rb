n = gets.chomp.to_i
p = gets.chomp.split(/\s+/).map { |e| e.to_i }

count = 0
min = p[0]
n.times { |i|
  count += 1 if min >= p[i]
  min = p[i] if min > p[i]
}

puts count
