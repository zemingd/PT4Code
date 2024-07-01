n, a, b = gets.strip.split.map { |v| v.to_i }

if (b - a) % 2 == 0
  puts (b - a) / 2
  exit
end

if a - 1 <= n - b
  puts b - 1 # (a - 1) + 1 + (b - a - 1)
  exit
end

puts n - a # (n - b) + 1 + (b - a - 1)
