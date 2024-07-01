n, k = gets.chomp.split(" ").map(&:to_i)
ans = 0

if n > k
  ans += (n-k) / n
end
for i in 1..(n-1) do
  r = (1 / n)*(1 / 2)**(k-i)
  ans += r
end

puts ans