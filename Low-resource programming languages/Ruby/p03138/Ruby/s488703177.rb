n, k = gets.split(" ").map(&:to_i)
ans = []
for l in 0..k
  ans[l] = 0
end
p = gets.split(" ").map(&:to_i)

for i in 0..k do
  for j in 0..(n-1) do
    #puts "i:#{i} p[j]:#{p[j]} ans:#{i ^ p[j]}"
    ans[i] += (i ^ p[j])
  end
end
puts ans.max
