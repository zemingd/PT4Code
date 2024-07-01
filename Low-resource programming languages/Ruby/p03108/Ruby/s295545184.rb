def root(arr, index)
    while arr[index][1] != index
        index = arr[index][1]
    end
    index
end

N, M = gets.split.map{|n| n.to_i}

A = Array.new(M)
B = Array.new(M)
c = Array.new(M)

for i in 1..M
    A[i-1], B[i-1] = gets.split.map{|n| n.to_i}
end

pre = Array.new(N+1){|i| [1, i]}
c[0] = N * (N - 1) / 2

for i in 1..M-1
    x = root(pre, A[M-i])
    y = root(pre, B[M-i])
    c[i] = c[i-1]

    if x == y
        next
    end

    c[i] -= pre[x][0] * pre[y][0]

    pre[y][1] = x
    pre[x][0] += pre[y][0]
end

puts c.reverse