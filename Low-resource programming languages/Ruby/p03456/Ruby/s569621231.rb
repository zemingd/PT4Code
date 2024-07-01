ab = gets.chomp.split
a = ab[0]
b = ab[1]
num = (a + b).to_i
puts Math.sqrt(num) % 1 == 0 ? "Yes" : "No"