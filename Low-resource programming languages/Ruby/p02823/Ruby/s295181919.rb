n, a, b = gets.chomp.split().map(&:to_i)

if (b - a).even?
  puts (b-a)/2
else
  puts [[b-1,a-1].max, [(n-b), (n - a)].max, (a-1) +1+ ((b-(a-1))-a)/2, (n-b) + 1+((b-(n-b))-b)/2].min
end