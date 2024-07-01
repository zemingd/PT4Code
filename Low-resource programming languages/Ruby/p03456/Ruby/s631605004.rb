a, b = gets.chomp.split(" ").map(&:to_s)
n = (a+b).to_i
puts Math.sqrt(n).to_i ** 2 == n ? "Yes" : "No"