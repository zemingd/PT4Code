n, a, b = gets.chomp.split().map(&:to_i)

if (b - a).even?
  puts (b-a)/2
else
  puts [(b/2 + a/2), (n-b)/2 + (n - a)/2].min
end