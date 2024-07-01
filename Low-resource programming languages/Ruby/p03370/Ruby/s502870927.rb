n, x = gets.split.map(&:to_i)
m = n.times.map{gets.to_i}
m.sort!
sum = 0
m.each{|mx| sum += mx}
puts n + (x-sum)/m[0]