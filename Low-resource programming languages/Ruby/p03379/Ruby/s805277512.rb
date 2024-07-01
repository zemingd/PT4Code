n = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

xx = x.sort
l, r = xx[n / 2 - 1], xx[n / 2]

n.times do |i|
  if x[i] <= l
    p r
  else
    p l
  end
end
