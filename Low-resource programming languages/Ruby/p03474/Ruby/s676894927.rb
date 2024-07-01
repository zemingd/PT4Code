a,b = gets.split.map(&:to_i)
s = gets.split("-")
puts s[0].size == a && s[1].size == b ? "Yes" : "No"
