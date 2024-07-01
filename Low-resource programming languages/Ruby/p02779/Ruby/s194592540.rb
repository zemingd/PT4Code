N = gets.to_i
A = gets.split.map(&:to_i)
puts A.sort.each_cons(2).none?{|a,b| a == b } ? 'YES' : 'NO'

