# 行列の積の公式
# Cij = Σ(Aik * Bkj)  (k=1, ...)

n, m, l = gets.chomp.split.map(&:to_i)
A = []
n.times do
    A << gets.chomp.split.map(&:to_i).to_a
end
B = []
m.times do
    B << gets.chomp.split.map(&:to_i).to_a
end

n.times do |i|
    line = []
    l.times do |j|
        cij = 0
        m.times do |k|
            cij += A[i][k]*B[k][j]
        end
        line << cij
    end
    puts line.join(" ")
end
