n = gets.strip.split("").map(&:to_i)
puts (n.count(n[0])>=3 || n.count(n[3])>=3) && n[1]==n[2] ? "Yes": "No"