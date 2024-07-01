n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)

map = Hash.new(0)
a.each do |x|
  map[x] += 1
end

_k = map.keys.size
c = map.sort {|a, b| a[1] <=> b[1] }
ans = 0
while _k > k do 
  ans += c.shift[1]
  _k -= 1
end

puts ans
