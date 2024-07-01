n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

h = Hash.new(0)
n.times do |i|
  x = (a[i] - ((i + 1))).abs
  h[x] += 1
end

x = h.values.max
xx = h.keep_if{|k, v| v == x}.keys.min

s = 0
n.times do |i|
  s += (a[i] - (-xx + (i + 1))).abs
end
puts s