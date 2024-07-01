N, M, C = gets.split.map(&:to_i)
bs = gets.split.map(&:to_i)
ans = 0
N.times do
    as = gets.split.map(&:to_i)
    sum = M.times.map{|i| as[i]*bs[i]}.inject(:+)
    ans += 1 if sum + C > 0
end
puts ans