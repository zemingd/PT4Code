n, k = gets.split.map(&:to_i)
as = Hash.new(0)
gets.split.map(&:to_i).each do |a|
  as[a] += 1
end
as = as.sort { |(k1,v1), (k2,v2)| v1<=>v2 }
ans = 0
n = as.size
if n > k
  for i in 0..(n - k - 1) do
    ans += as[i][1]
  end
end
puts ans