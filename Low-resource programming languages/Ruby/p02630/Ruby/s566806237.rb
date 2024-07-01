N = gets.to_i
AN = gets.split.map(&:to_i)
BC = gets.chomp.to_i.times.map { gets.split.map(&:to_i) }

sum = AN.sum
counts = 100_000.times.map { |i|
  AN.select { |n| n == i }.count
}

BC.each do |bc|
  b, c = bc
  sum = sum + (c - b) * counts[b]
  counts[c] = counts[c] + counts[b]
  counts[b] = 0
  puts sum
end
