n = gets.chomp.split("").map(&:to_i)
org = n.join
result = "No"
result = "Yes" if org == n.reverse.join
puts result