n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
(1..(n-2)).each do |i|
    ans += 1 if (a[i-1] > a[i]) == (a[i] > a[i+1])
end
puts ans