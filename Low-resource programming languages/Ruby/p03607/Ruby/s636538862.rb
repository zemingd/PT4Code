N = gets.to_i
A = []
answer = 0
for i in 0..N-1
    A[i] = gets.to_i
end

a = 0
answer = 0
B = A.sort

for i in 0..A.size-2

    if B[i] != B[i+1]

        if (i - a + 1) % 2 == 1

            answer += 1

        end

        a = i + 1

    end

end



puts answer