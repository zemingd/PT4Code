S = gets.chomp
T = gets.chomp
cnt = 0
for i in  0..(2)
    if S[i] == T[i]
        cnt += 1
    end
end
puts cnt