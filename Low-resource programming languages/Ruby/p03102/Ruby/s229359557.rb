N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
A = []
N.times do
    A << gets.split.map(&:to_i)
end
tmp = 0
ans = 0
0.upto(N - 1) { |i| 
    0.upto(M - 1) { |j|
        tmp += A[i][j] * B[j]
    }
    ans += 1 if (tmp + C) > 0
    tmp = 0
}
puts ans