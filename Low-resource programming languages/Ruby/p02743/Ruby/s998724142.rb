a,b,c = gets.split.map(&:to_i)
x = Math.sqrt(a*b)*2 + 1e-14
y = c - a - b
puts x<y ? "Yes" : "No"
