n, m = gets.split.map(&:to_i)
s = Array.new(n, 0)
m.times do
  a, b = gets.split.map(&:to_i)
  s[a - 1] += 1
  s[b - 1] += 1
end
puts s
