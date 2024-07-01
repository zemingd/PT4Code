n, l = gets.split.map(&:to_i)
apple =
  if (l..l + n - 1).include?(0)
    0
  elsif l > 0
    l
  else
    l + n - 1
  end
puts n * l + (n - 1) * n / 2 - apple
