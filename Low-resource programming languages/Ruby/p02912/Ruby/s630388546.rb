N, M = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i).sort.reverse
i, count = 0, 0

while count < M do
    A[i] /= 2
    if i < N - 1 && A[i] < A[i + 1]
        i += 1
    elsif i == N - 1
        i = 0
    end
    if i > 0
        j = 0
        tmp = i
        while  j < i
            max = A[i]
            if A[j] > max 
                max = A[j]
                tmp = j
            end
            j += 1
        end
        i = tmp
    end
    count += 1
end

puts A.inject(:+)