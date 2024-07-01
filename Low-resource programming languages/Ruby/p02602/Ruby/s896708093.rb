n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
accumulation = []
res = 1
k.times do |i|
    res *= a[i]
end
accumulation << res

(n-k).times do |i|
    accumulation << (accumulation[i] / a[i]) * a[i+k]
end

(1..(n-k)).each do |i|
    puts accumulation[i-1] < accumulation[i] ? "Yes" : "No"
end