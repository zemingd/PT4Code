a,b,c = gets.chomp.split(" ").map(&:to_i)

puts [a*10+b+c,a+b*10+c,a+b+c*10].max