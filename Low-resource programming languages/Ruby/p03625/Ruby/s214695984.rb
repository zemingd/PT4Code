N = gets.to_i
A = gets.split.map(&:to_i).sort!

edge,tmp = [],nil
A.reverse_each do
  if _1 == tmp
    tmp = nil
    edge << _1
    break if edge.size == 2
  else
    tmp = _1
  end
end
puts edge.inject(:*) || 0