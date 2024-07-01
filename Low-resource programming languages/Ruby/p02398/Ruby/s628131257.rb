a,b,c=gets.chomp.split(" ").map(&:to_i)
puts (a..b).select {|e| c%e==0 }.length

