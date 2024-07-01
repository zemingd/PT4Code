n, a, b = gets.chomp.split().map(&:to_i)

if (b - a).even?
  puts (b-a)/2
else
  puts [[b-1,a-1].max, [(n-b), (n - a)].max].min
end
