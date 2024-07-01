S = gets.chomp

ans1 = 0
ans2 = 0
# 1010 ~~
S.length.times do |i|
    if i % 2 == 0
        if S[i] == "0"
            ans1 += 1
        end
    else
        if S[i] == "1"
            ans1 += 1
        end
    end
end

# 0101 ~~
S.length.times do |i|
    if i % 2 == 0
        if S[i] == "1"
            ans2 += 1
        end
    else
        if S[i] == "0"
            ans2 += 1
        end
    end
end

puts [ans1, ans2].min