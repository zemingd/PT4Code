N,K = gets.split.map(&:to_i)
A = gets.strip.split.map(&:to_i)
B = A.uniq
C = []
answer = 0

if B.size - K > 0

    for i in 0..B.size-1

        C[i] = A.count(B[i])

    end

    C.sort!

    for i in 0..B.size-K-1

        answer += C[i]

    end

end

puts answer
