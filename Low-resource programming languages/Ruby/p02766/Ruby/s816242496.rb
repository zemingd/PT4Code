n, K = gets.chomp.split.map(&:to_i)
ans = 0
while n > 0 do
    n /= K
    ans += 1
end
puts ans