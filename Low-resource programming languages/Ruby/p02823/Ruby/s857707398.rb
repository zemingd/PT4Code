n, a, b = gets.strip.split.map { |v| v.to_i }

if (b - a) % 2 == 0
  puts (b - a) / 2
  exit
end

if a - 1 <= n - b
  puts (a + b - 1) / 2 # (a - 1) + 1 + (b - a - 1) / 2
  exit
end

puts n - (a + b - 1) / 2 # (n - b) + 1 + (b - a - 1) / 2
