a,b = gets.split(" ").map(&:to_i)
add = a+b
su = a-b
mul = a*b
puts [add, su, mul].max
