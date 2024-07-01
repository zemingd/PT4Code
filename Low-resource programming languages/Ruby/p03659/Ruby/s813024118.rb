n = gets.to_i
a = gets.split.map(&:to_i)

ara = a.inject(:+)
snu = 0
ans = 10 ** 9 * n
(n-1).times do |i|
    snu += a[i]
    ara -= a[i]
    ans = (snu - ara).abs if ans > (snu - ara).abs
end

puts ans