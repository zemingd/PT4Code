n = gets.to_f
tra = []
5.times { tra << gets.to_i }
puts (n/tra.min).ceil + 4
