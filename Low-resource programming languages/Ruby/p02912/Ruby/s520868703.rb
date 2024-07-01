_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
m.times do
  tmp = a.pop / 2
  a.insert(a.bsearch_index { |x| x >= tmp } || 0, tmp)
end
p a.inject(:+)