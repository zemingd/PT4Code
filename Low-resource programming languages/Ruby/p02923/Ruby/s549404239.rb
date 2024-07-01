n = gets.to_i

h = gets.split.map(&:to_i)

movables = Array.new(n, 0)

(n - 1).times do |i|
  puts(l: h[i], r: h[i + 1])
  movables[i + 1] = 1 if h[i] >= h[i + 1]
end

ans = 0

n.times do |nn|
  if movables[nn] == 1
    ans += 1
  else
    ans = 0
  end
end

puts ans
