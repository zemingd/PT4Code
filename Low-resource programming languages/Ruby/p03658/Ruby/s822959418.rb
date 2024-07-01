n, k = gets.split.map(&:to_i)
i = gets.split.map(&:to_i).sort

i.shift(n - k)
puts i.sum
