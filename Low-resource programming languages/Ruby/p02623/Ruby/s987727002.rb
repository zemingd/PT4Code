n, m, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
i = j = 0
ans = 0
queue = [[i, j, k, ans], [i, j, k, ans]] # aのidx, bのidx, 残り時間, ans

until queue.empty?
    i, j, time, res = queue.shift
    next if time < 0
    queue << [i+1, j, time-a[i], res+1] if i < n && time - a[i] >= 0
    queue << [i, j+1, time-b[j], res+1] if j < m && time - b[i] >= 0
    ans = ans > res ? ans : res
end

puts ans