a = gets.split('').map {|n| n.to_i}
puts a.inject(:+)