n, k = gets.chomp.split.map(&:to_i)
if n == 1
  puts k
else
  puts k * ((k - 1) ** (n - 1))
end