N = gets.to_i
puts gets.split.map(&:to_i).uniq.size == N ? 'YES' : 'NO'