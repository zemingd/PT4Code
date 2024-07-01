n = gets.to_i
as = Array.new(n, 0)
bs = Array.new(n, false)

n.times do |i|
  as[i] = gets.to_i - 1
end

x = 0
c = 1
loop do
  x = as[x]
  break if x == 1
  break if bs[x]
  bs[x] = true
  c += 1
end

p x == 1 ? c : -1
