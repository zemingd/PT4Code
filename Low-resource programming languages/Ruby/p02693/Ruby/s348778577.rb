K = gets.to_i
A,B = gets.split.map(&:to_i)
puts ((A - 1) / K) < (B / K) ? 'YES' : 'NO'
