N = gets.to_i
S = gets.chomp

c = S[1,N].count('E')
m = c

for i in 0..N-2
    if S[i] == 'W' && S[i+1] == 'W'
        c += 1
    end
    if S[i] == 'E' && S[i+1] == 'E'
        c -= 1
    end
    if m > c
        m = c
    end
end

puts m