N,M = gets.split.map(&:to_i)
K = Array.new(N,0)
M.times do |i|
    l,r = gets.split.map(&:to_i)
    [*l..r].each do |x|
        K[x-1] += 1
    end
end

res = 0
K.each do |k|
    res += 1 if k == M
end
puts res