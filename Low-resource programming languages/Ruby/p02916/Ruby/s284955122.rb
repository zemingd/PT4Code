n = gets.to_i
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
c = gets.split.map(&:to_i)

prev = -1
ans = 0
a.each do |i|
  ans += b[i-1]
  ans += c[prev-1] if prev == i-1
  prev = i
end
puts ans