n, m, l = gets.chomp.split.map(&:to_i)

mat01 = Array.new(n) do
    Array.new(m)
end

mat02 = Array.new(m) do
    Array.new(l)
end

n.times do |i|
    mat01[i] = gets.chomp.split.map(&:to_i)
end

m.times do |i|
    mat02[i] = gets.chomp.split.map(&:to_i)
end

n.times do |i|
    l.times do |j|
        unless j == 0
            print " "
        end

        c = 0
        m.times do |k|
            c += mat01[i][k] * mat02[k][j]
        end
        print c
    end
    puts ""
end