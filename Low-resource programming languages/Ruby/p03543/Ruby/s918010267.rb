n = gets.strip.split("").map(&:to_i)
puts n.uniq.length==2 && n[1]==n[2] ? "Yes" : "No"