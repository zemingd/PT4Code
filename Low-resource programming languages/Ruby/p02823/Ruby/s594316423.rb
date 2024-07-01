n, a, b = gets.split(" ").map(&:to_i)

if (b - a).even?
  puts (b - a) / 2
else
  puts [(n - a), b - 1].min
end