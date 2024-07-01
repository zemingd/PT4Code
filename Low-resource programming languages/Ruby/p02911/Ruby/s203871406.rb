n, k, q = gets.split.map(&:to_i)
a = Array.new(q)
for i in 0..(q-1)
  a[i] = gets.to_i
end

ans = Array.new(n+1, 0)
for i in 0..(q-1)
  ans[a[i]] += 1
end

for i in 1..n
  if k - q + ans[i] > 0
    puts "Yes"
  else
    puts "No"
  end
end