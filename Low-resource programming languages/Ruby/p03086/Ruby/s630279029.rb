s = gets.to_s
arr = s.scan(/[ACGT]*/)
k = arr.max
puts k.length
