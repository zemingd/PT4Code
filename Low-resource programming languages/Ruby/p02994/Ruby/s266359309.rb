n, l = gets.chomp.split(' ').map{|i| i.to_i }

min = 1000
sum = 0
n.times{|i|
  r = l + i
  min = r if min.abs > r.abs
  sum += r
}
puts sum - min
