n,m,c = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a = n.times.map { gets.split.map(&:to_i)}
cnt = 0
for i in 0.. n -1 do
    sum = 0
    for j in 0.. m - 1 do
        sum = sum + a[i][j] * b[j]
    end
    sum + c > 0 ? cnt += 1: sum = 0
end
puts cnt