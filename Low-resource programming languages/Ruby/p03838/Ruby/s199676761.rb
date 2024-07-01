x, y = gets.split().map(&:to_i)

if (x < 0 || y < 0) && !(y<x)
  c = 1
  c = c + (x.abs - y.abs).abs
elsif x == -y || -x == y
  c = 1
elsif y < x
  c = 2
  c = c + (x-y).abs
else
  c = (x.abs - y.abs).abs
end
puts c
