N = gets.chomp.to_i
S = gets.chomp
cnt = 0
for i in 0..(S.length-2)
    if S[i] == S[i+1]
        cnt += 1
    end 
end 
puts N-cnt