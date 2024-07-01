a,b,c = gets.split.map(&:to_i)

puts a + b + 2 * ((a*b)**0.5) < c ? "Yes" : "No"