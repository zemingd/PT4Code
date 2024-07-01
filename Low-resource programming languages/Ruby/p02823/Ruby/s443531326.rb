n, a, b = gets.split(" ").map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  if b - a == 1
    puts [n - a, b - 1].min
  else
    puts [a - 1, n - b].min + 1 + (b - a - 1) / 2
  end
end
