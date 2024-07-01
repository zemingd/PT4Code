s = gets.chomp.chars
ans = s.count("R")
ans = [ans, 1].min if s[1] != "R"
puts ans
