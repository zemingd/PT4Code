n = gets.to_i
a = gets.split.map(&:to_i)

ans = Array.new(n+1,0)
for i in 0..(n-2)
  ans[a[i-1]] += 1
end
for i in 1..n
  puts ans[i]
end