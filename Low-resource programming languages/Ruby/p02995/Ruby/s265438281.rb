a,b,c,d = gets.split.map(&:to_i)
puts b-a+1-(((b/c)+(b/d)-(b/(c.lcm(d))))-(((a-1)/c)+((a-1)/d)-((a-1)/(c.lcm(d)))))