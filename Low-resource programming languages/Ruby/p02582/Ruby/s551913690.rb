s = gets.chomp+"S"
ans = 0
cnt = 0
4.times do |i|
    if s[i] == "R"
        cnt += 1
    else
        ans = [ans,cnt].max
        cnt = 0
    end
end
puts ans