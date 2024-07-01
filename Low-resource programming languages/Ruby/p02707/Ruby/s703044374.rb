N = gets.chomp.to_i
A = gets.chomp.split(" ").map(&:to_i)

for i in 1..N
    n = 0
    for j in 0..(N - 2)
        if i == A[j]
            n += 1
        end
    end
    puts n
end