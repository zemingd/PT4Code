n, k = gets.split.map(&:to_i)
as = gets.split.map(&:to_i).sort
ans = 0

while as.uniq.size > k
  as.delete_at(-1)
  ans += 1
end
puts ans