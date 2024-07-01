n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
answer = "Yes"
for i in 0..n-1 do
  for j in 0..n-1 do
    next if i==j
    answer = "No" if a[i] == a[j]
  end
end
print answer