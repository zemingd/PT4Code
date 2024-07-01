a,b,c = gets.chomp.split(" ").map(&:to_i)
sort=[a,b,c].sort
ans=10*sort[2]+sort[1]+sort[0]
puts ans