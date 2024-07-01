n, a, b = gets.split.map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  if a - 1 < n - b
    puts (a - 1) + 1 + (b - a - 1) / 2
  else
    puts (n - b) + 1 + (n - (a + (n - b + 1))) / 2
  end
end
