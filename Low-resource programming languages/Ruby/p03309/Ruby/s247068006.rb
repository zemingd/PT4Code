n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

def sum(b, a)
  s = 0
  a.each_with_index do |an, i|
    s += (an - (b + i + 1)).abs
  end
  s
end

list = []
b = rand(a.min..a.max)
100000.times do
  list << sum(b, a)
  bn, bp = sum(b-1, a), sum(b+1, a)
  b = bn < bp ? b - 1 : b + 1

  if list[-2] == (bn < bp ? bn : bp) then
    break
  end
end

puts list.min
