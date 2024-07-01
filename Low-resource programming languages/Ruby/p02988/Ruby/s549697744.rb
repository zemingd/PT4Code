N = gets.to_i
Ps = gets.split.map(&:to_i)

puts  ds = Ps.each_cons(2).map{|a, b| b - a}.each_cons(2).count{|a, b| a*b > 0}