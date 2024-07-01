H,W=gets.split.map(&:to_i)
ss = H.times.map { gets.chomp }

v = Array.new(H) { Array.new(W, 0)}
h = Array.new(H) { Array.new(W, 0)}

H.times do |i|
    l = 0
    W.times do |j|
        if ss[i][j] == '#'
            n = j-l
            l.upto(j-1) do |k|
                v[i][k] = n
            end
            l = j+1
        end
    end
    if l != W
        n = W-l
        l.upto(W-1) do |k|
            v[i][k] = n
        end
    end
end

W.times do |i|
    l = 0
    H.times do |j|
        if ss[j][i] == '#'
            n = j-l
            l.upto(j-1) do |k|
                h[k][i] = n
            end
            l = j+1
        end
    end
    if l != H
        n = H-l
        l.upto(H-1) do |k|
            h[k][i] = n
        end
    end
end

max = 0
H.times do |i|
    W.times do |j|
        n = v[i][j] + h[i][j] - 1
        max = n if max < n
    end
end

# p v
# p h
puts max