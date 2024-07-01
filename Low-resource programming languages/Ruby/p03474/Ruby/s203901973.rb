a, b = gets.split.map(&:to_i)
s = gets.strip

x =  s.split("").find_index{ |n| n=="-" } == a
y =  s.length == (a+b).succ

puts x && y ? "Yes" : "No"