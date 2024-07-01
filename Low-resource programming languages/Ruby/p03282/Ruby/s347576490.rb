s = gets.chomp
k = gets.chomp.to_i
if s.size == 1
    puts s
elsif s.size >= 2 && s[0] == "1" && k >= 2
    puts s[1]
elsif s.size >= 2 && s[0] == "1" && k < 2
    puts s[0]
elsif s.size >= 2 && s[0] != "1"
    puts s[0]
end