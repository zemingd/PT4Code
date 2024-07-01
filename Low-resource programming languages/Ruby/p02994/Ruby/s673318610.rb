n, l = gets.split.map(&:to_i)
apple =
  if l <= 0 && l + n >= 0
    0
  elsif l < 0
    l + n - 1
  else
    l
  end
puts n * l + (n - 1) * n / 2 - apple
