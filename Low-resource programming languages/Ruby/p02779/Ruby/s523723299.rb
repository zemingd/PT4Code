n = gets.chomp.to_i
arr = gets.chomp.split.take(n)

puts arr.size == arr.uniq.size ? 'YES' : 'NO'