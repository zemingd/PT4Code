n = gets.to_i
xs = gets.split.map(&:to_i)
ys = xs.sort
med = {}
ys.each_with_index do |y, i|
  if i < n / 2
    med[y] = ys[n / 2]
  else
    med[y] = ys[n / 2 - 1]
  end
end
xs.each { |x| p med[x] }