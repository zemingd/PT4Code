a,b,c = gets.split.map(&:to_i)
# a + b + 2 * ((a*b)**2) < c
f = 4 * (a*b)
g = (c-a-b)**2
# p [f,g]
puts 4 * (a*b) < (c-a-b)**2 ? "Yes" : "No"