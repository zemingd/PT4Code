_n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
b = [a.pop / 2]
(m - 1).times do
  if !a.empty? && a[-1] >= b[-1]
    tmp = a.pop / 2
    b.unshift(tmp)
  else
    tmp = b.pop / 2
    b.unshift(tmp)
  end
end
p (a + b).inject(:+)