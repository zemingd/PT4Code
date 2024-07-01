N, M = gets.split.map(&:to_i)
ys = Array.new(N+1){[]}
M.times do |i|
    p, y = gets.split.map(&:to_i)
    ys[p].push([y, i])
end
ans = Array.new(M)
(1..N).each do |i|
    ys[i].sort!
    ys[i].length.times do |j|
        ans[ys[i][j][1]] = sprintf("%06d%06d", i, j+1)
    end
end
M.times do |i|
    puts ans[i]
end