n = gets.chomp.split("").map(&:to_i)
ans = false
ans = true if n[0] == n[1] && n[1] == n[2] && n[2] == n[0]
ans = true if n[1] == n[2] && n[2] == n[3] && n[3] == n[1]
puts ans ? "Yes" : "No"