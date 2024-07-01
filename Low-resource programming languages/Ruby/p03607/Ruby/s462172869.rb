N = gets.to_i
A = []
answer = 0
for i in 0..N-1
    A[i] = gets.to_i
end

for i in 0..A.uniq.size-1

    if A.count(A.uniq[i]) % 2 == 1

        answer += 1

    end

end

puts answer