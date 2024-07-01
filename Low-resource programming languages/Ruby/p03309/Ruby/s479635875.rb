n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

def sum(b, a)
  s = 0
  a.each_with_index do |an, i|
    s += (an - (b + i + 1)).abs
  end
  s
end

def pp(x)
  if x.abs < 1 then
    return (x >= 0) ? 1 : -1
  end
  x
end

list = []
b = rand(a.min..a.max)
100000.times do
  bs = sum(b, a)
  list << bs
  bn, bp = sum(b-1, a), sum(b+1, a)
  p = (bn < bp ? -(bs - bn).abs : (bs - bp).abs) * 0.1
  b = b + pp(p)

  if list[-2] == (bn < bp ? bn : bp) then
    break
  end
end

puts list.min