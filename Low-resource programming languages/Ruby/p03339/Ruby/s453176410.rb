N = gets.to_i
S = gets.chomp
answer = []
e = S.count('E')
a = e 

for i in 0..N-1

    if S[i] == 'E'

        a -= 1
        answer[i] = i+2*a+1-e

    else

        answer[i] = i+2*a-e 

    end

end

puts answer.min