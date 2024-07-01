N, M = gets.split(" ").map(&:to_i)
A = gets.split(" ").map(&:to_i).sort.reverse

M.times do
    A[0] /= 2
    next if N == 1
    a = A.shift
    i = 0
    while i < N - 1 do
        break if a >= A[i]
        i += 1
    end
    if i == 0
        A.unshift(a)
    elsif i == N
        A.push(a)
    else
        A.insert(i, a)
    end
end

puts A.inject(:+)