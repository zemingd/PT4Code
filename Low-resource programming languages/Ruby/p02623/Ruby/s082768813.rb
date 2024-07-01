n, m, k = gets.split(" ").map(&:to_i)
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
if k < a[0] || k < b[0]
  puts 0
  exit
end
t = []
t[0] = 0
for i in 0..m-1
  t[i+1] = b[i] + t[i]
end
ans = min = 0
for i in 0..n-1
  k -= a[i]
  min = 0
  for j in 1..m
    if k < t[j]
      min = j + i
      break
    elsif j == m-1
      min = n + m
    end
  end
  if ans < min
    ans = min
  end
end
puts ans

