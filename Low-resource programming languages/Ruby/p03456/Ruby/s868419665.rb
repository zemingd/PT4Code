a, b = gets.split(' ').map(&:to_i)

c = a*b
d = (Math.sqrt c).to_i

if d*d == c; then puts "Yes"
else puts "No"