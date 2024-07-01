n, m = gets.split.map(&:to_i)
list = []
n.times do
  _k, tmp = gets.split(nil, 2)
  a = tmp.split.map(&:to_i)
  if list.count == 0
    list = a
  else
    list &= a
  end
end
puts list.count