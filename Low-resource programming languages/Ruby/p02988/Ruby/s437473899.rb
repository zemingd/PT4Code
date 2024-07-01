n = gets.to_i
ar = gets.split.map(&:to_i)
ans = 0
for i in 1..n-2
  if (ar[i-1] <= ar[i] && ar[i] < ar[i+1]) || (ar[i-1] > ar[i] && ar[i] >= ar[i+1])
    ans += 1
  end
end
puts ans
