n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
aa = a.sort
money = 0
while m > 0
  x = aa.pop / 2
  if aa.empty?
    aa.push x
  else
    i = aa.bsearch_index{|n| x <= n}
    aa[i, 0] = x
  end
  m -= 1
end
puts aa.inject(:+)
