n, l = gets.split.map(&:to_i)
h = Array.new
id = -199
s = 101
for i in 1..n
  if (l+i-1).abs < s
    s = (l+i-1).abs
    id = i - 1
  end
  h << l + i - 1
end
h.delete_at(id)
ans = 0
h.each do |x|
  ans += x
end
puts ans