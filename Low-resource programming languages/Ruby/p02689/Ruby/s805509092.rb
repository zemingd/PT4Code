require "set"

n, m = gets.split.map(&:to_i)
h = gets.split.map(&:to_i).each.with_index(1).sort.reverse.to_h{|x, i| [i, x]}
delete = Set.new
m.times do
  a,b = gets.split.map(&:to_i)
  if h[a] == h[b]
    delete << a
    delete << b
  elsif h[a] > h[b]
    delete << b
  else
    delete << a
  end
end

puts (n - delete.count)