K = gets.to_i
A,B = gets.split.map(&:to_i)

puts ((A..B).any?{|x| x % K == 0} ? "OK" : "NG")