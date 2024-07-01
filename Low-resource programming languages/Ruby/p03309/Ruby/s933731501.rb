n = gets.to_i
as = gets.split.map(&:to_i)

tmp = []
as.each.with_index(1) do |a,i|
  tmp << a - i
end

tmp.sort!

b = tmp[tmp.size/2]

ans = 0
tmp.each do |t|
  ans += (t - b).abs
end
puts ans
