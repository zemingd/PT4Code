foo = gets.strip.split
puts foo[1] == "+" ? foo[0].to_i + foo[2].to_i : foo[0].to_i - foo[2].to_i
