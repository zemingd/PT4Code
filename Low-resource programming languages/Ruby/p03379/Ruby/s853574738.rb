n = gets.chop.to_i
x = gets.chop.split.map(&:to_i)
xs = x.sort
center = n / 2 - 1
n.times do |i|
  if x[i] <= xs[center]
    puts xs[center + 1]
  else
    puts xs[center]
  end
end
