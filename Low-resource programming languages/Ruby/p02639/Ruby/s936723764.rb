x = gets.split.map(&:to_i)
x.each.with_index(n, i) do
  puts i + 1 if n.zero?
end