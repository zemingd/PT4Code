n = gets.split.map(& :to_i).sort{|a, b| a <=> b}
print n[0].to_s + " " + n[1].to_s + " " + n[2].to_s + "\n"