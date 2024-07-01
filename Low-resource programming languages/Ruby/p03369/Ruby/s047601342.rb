S = gets.chomp
ans = 700
for i in 0..2
    if S[i] == 'o'
        ans += 100
    end
end
puts ans