a,b,c,d = gets.chomp.split(" ").map(&:to_i)
 
l = c.lcm(d)
 
puts (b - (a-1)) - ( ((b/c) - ((a-1)/c))  + ((b/d) - ((a-1)/d))  ) + ( (b/l) - ((a-1)/l) )

a,b,c,d = gets.split.map {|x| x.to_i}