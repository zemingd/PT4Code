n,x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

a.sort!
sum = 0
ans = 0
a.each do |v|
  if sum + v <= x
    sum += v
    ans += 1
  end
end
ans -= 1 if ans == n && sum != x 
p ans
