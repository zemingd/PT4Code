n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
ans = -1
val = 10000000000
n.times do |i|
    tmp = t - h[i] * 0.006
    tmp = (a - tmp).abs
    if tmp < val
        val = tmp
        ans = i + 1
    end
end
p ans