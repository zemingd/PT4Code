n = gets.to_i
h = gets.split.map(&:to_i)

movables = Array.new(n, 0)
(n - 1).times do |i|
  movables[i + 1] = 1 if h[i] >= h[i + 1]
end
# puts(movables: movables)

max = 0
cur = 0
movables.each do |m|
  if m == 1
    cur += 1
  elsif m == 0
    max = cur if cur >= 1
    cur = 0
  end
  # puts(m: m, cur: cur, max: max)
end

puts cur >= max ? cur : max