s = gets.strip.chomp
ans = [s.count("0"), s.count("1")].min * 2
puts ans