a, b = gets.chomp.split(" ").map(&:to_s)
n = (a+b).to_i
puts Integer.sqrt(n) ** 2 == n ? "Yes" : "No"