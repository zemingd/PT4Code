n, k = gets.chomp.split.map(&:to_i)

if k.odd?
  puts (n / k) ** 3
else
  m = (n + 2 / k) / k
  puts (n / k) ** 3 + m ** 3
end
