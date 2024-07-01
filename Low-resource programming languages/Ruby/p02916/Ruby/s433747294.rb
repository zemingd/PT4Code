N = gets.to_i
A = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
C = gets.split.map(&:to_i)
before = -1
res = 0
A.each do |a|
    res += B[a-1]
    if before == a-1 then
        res += C[before-1]
    end
    before = a
end
puts res