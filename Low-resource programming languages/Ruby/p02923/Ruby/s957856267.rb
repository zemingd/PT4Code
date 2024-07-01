N = gets.to_i
Hs = gets.split.map(&:to_i)

m = 0
puts Hs.each_cons(2).map{|a, b| a >= b ? m += 1 : m = 0}.max