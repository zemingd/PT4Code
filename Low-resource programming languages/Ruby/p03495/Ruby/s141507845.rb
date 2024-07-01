N,K = gets.split.map(&:to_i)
A = gets.strip.split.map(&:to_i)
A.sort!
B = []
answer = 0
a = 0

for i in 0..N-2

    if A[i] != A[i+1]

        B.push(i-a+1)
        a = i+1

    end

end

B.push(N-a)
B.sort!

if B.size-K > 0

    for i in 0..B.size-K-1

        answer += B[i]

    end

end

puts answer 
