a,b,c = gets.split(' ').map{ |x|x.to_i }
puts (a <= c and c <= b) ? 'YES' : 'NO'