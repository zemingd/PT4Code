a,b=gets.chomp.split(" ")
puts (a..b).count{|n| n == n.reverse}