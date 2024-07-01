n, m, l = gets.split.map(&:to_i)
A = Array.new(n).map{Array.new(m)}
B = Array.new(m).map{Array.new(l)}
C = Array.new(n).map{Array.new(l,0)}
n.times do |i|
    A[i] = gets.split.map(&:to_i)
end
m.times do |i|
    B[i] = gets.split.map(&:to_i)
end
n.times do |i|
    l.times do |j|
        x = 0
        m.times do |k|
            x += A[i][k]*B[k][j]
        end
        C[i][j] = x
    end
end
C.each{|c| puts c.join(' ')}
