a, b = gets.chomp.split(" ")
a=a.to_i
b=b.to_i
puts (a<b) ? "a < b" : (a>b)? "a > b" : "a == b"