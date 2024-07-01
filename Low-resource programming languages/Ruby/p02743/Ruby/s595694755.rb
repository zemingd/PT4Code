a,b,c = gets.split.map(&:to_i)
x = Math.sqrt(a*b)*2 + a + b

puts x<c ? "Yes" : "No"
