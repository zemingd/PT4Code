N, M, C = gets.chomp.split.map(&:to_i)
B = gets.chomp.split.map(&:to_i)
res = 0
sum = 0
N.times do |n|
    A = gets.chomp.split.map(&:to_i)
    M.times do |n|
        sum += B[n]*A[n]
    end
    if sum + C > 0 then
        res += 1
    end
end
puts res