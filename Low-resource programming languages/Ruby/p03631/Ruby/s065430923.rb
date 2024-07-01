n = gets.chomp.split("").map(&:to_i)
org = n.join
result = "No"
n << n.shift; result = "Yes" if org == n.join
n << n.shift; result = "Yes" if org == n.join
n << n.shift; result = "Yes" if org == n.join
puts result