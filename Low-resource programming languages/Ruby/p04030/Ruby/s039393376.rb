s = gets.chomp

ans = ""
s.each_char do |c|
    c == "B" ? ans.slice!(-1) : ans += c
end

puts ans