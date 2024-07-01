_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
m.times do
  tmp = a.pop / 2
  if tmp >= a[-1]
    a << tmp
  else
    a.insert(a.bsearch_index { |x| x >= tmp } || 0, tmp)
  end
end
p a.inject(:+)