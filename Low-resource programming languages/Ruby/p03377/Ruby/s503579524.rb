a,b,x = gets.split.map(&:to_i)
puts (a .. a + b).include?(x) ? 'YES' : 'NO'