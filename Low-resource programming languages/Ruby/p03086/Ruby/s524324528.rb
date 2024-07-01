s = gets.to_s.chomp
arr = s.scan(/[ACGT]*/)
k = arr.max
puts k.length
