n = gets.to_i
a = gets.split.inject(1) { |p, n| p.to_i * n.to_i }

if a > 10 ** 18
  puts -1
else
  puts a
end