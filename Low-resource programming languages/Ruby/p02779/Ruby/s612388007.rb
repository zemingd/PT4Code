N = gets.to_i
As = gets.split.map(&:to_i)

puts As.uniq.size == N ? 'YES' : 'NO'