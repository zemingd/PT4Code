s = gets.chomp
tmp = 0
ans = 0
s.size.times do |i|
    if s[i] == "R"
        tmp = tmp + 1
    else
        ans = tmp if tmp > ans
        tmp = 0
    end
end
ans = tmp if tmp > ans

puts ans
