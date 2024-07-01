N, M = gets.split.map{|n| n.to_i}

A = Array.new(M)
B = Array.new(M)
c = Array.new(M)

for i in 1..M
    A[i-1], B[i-1] = gets.split.map{|n| n.to_i}
end

group = Array.new(N+1).map{Array.new}
for i in 1..N
    group[i] = [i]
end

c[M-1] = N * (N - 1) / 2
for i in 1..M-1
    c[M-i-1] = c[M-i]

    if group[A[M-i]].include?(B[M-i]) || group[B[M-i]].include?(A[M-i])
        next
    end

    x = group[A[M-i]].size
    c[M-i-1] += x * (x - 1) / 2
    x = group[B[M-i]].size
    c[M-i-1] += x * (x - 1) / 2

    k = group[A[M-i]] | group[B[M-i]]
    k.each do |a|
        group[a] = k
    end
    x = group[A[M-i]].size
    c[M-i-1] -= x * (x - 1) / 2

end

puts c