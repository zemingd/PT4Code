n, m = gets.split(" ").map &:to_i
nn = Array.new(n, 1)
h = gets.split(" ").map &:to_i
m.times{
  a, b = gets.split(" ").map &:to_i
  if h[a-1] < h[b-1]
    nn[a-1] = 0
  elsif
    h[a-1] == h[b-1]
    nn[a-1] = 0
    nn[b-1] = 0
  else
    nn[b-1] = 0
  end
#  p nn
}
puts nn.sum