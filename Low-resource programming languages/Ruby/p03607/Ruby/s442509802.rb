n = gets.to_i
array = []
n.times{ array << gets.to_i }
puts array.select{ |a| array.count(a) % 2 == 1 }.length