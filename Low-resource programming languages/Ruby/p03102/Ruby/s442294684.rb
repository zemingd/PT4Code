N, M, C = gets.split.map(&:to_i)
B = gets.split.map(&:to_i)
ans = 0
N.times do |i|
    sum = 0
    a = gets.split.map(&:to_i)
    M.times do |j|
        sum += a[j] * B[j]
    end
    ans += 1 if sum + C > 0
end
puts ans