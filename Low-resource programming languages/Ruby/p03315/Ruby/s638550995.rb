S = gets.chomp
ans = 0
for i in 0..3
    if S[i] == '+'
        ans += 1
    else
        ans -= 1
    end
end
puts ans