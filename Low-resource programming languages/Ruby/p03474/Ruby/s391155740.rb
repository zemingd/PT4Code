a, b = gets.split.map(&:to_i)
s = gets.chomp.split("-")
puts s.length == 2 && s[0].length == a && s[1].length == b ? "Yes" : "No"
