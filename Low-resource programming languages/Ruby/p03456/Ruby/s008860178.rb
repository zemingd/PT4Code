a, b = gets.split(' ')

c = (a+b).to_i
d = (Math.sqrt c).to_i

if d*d == c; then puts "Yes"
else puts "No"
end