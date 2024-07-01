n,m = gets.split.map(&:to_i)
ans = Hash.new(0)
m.times do
  a,b = gets.split.map(&:to_i)
  ans[a] += 1
  ans[b] += 1
end

1.upto(n) do |i|
  puts ans[i]
end
