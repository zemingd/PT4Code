gets
a = gets.chomp.split(' ')
puts a.uniq.size == a.size ? 'YES' : 'NO'