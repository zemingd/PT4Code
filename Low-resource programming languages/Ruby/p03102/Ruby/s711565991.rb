N,M,C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
res = 0
N.times do |i|
    w = gets.split.map(&:to_i)
    x = C
    w.each_with_index do |a,j|
        x += a * B[j]
    end
    res += 1 if x > 0
end
puts res