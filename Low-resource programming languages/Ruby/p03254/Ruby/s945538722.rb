n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
sum, ans = 0, 0
a.each do |i|
    if sum + i <= x
        sum += i
        ans += 1
    end
end
ans -= 1 if ans == n && sum != x
puts ans