n = gets.chomp.to_i
t, a = gets.split().map(&:to_f)

height = []
for i in 0..n-1 do
    h = gets.to_i
    height.push(t - h * 0.006)
end

ans = 1000000000
res = 0

for i in 0..n-1 do
    tmp = (a - height[i]).abs
    if tmp < ans then
        res = i + 1
        ans = tmp
    end
end

puts res