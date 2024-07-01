n, m, l = gets.chomp.split.map(&:to_i)

A = []
n.times{ A << gets.chomp.split.map(&:to_i)}
B = []
m.times{ B << gets.chomp.split.map(&:to_i)}

C = Array.new(n){Array.new(l, 0)}
for i in (0...n)
    for j in (0...l)
        for k in (0...m)
            C[i][j] += A[i][k] * B[k][j]
        end
    end
end
#C.each{|row| puts row.join(" ")}

