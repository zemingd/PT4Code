def harmony(a, b)
  k = (a + b) / 2
  (a - k).abs == (b - k).abs ? k : 'IMPOSSIBLE'
end

a, b = gets.split.map(&:to_i)
puts harmony(a, b)
