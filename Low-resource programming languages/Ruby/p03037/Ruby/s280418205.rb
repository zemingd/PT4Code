N,M=gets.split.map &:to_i
sum = Array.new(N+2){0}
M.times do
  l, r = gets.split.map &:to_i
  sum[l] += 1
  sum[r+1] -= 1
end
1.upto(N) do |i|
  sum[i+1] += sum[i]
end
p sum.count(M)