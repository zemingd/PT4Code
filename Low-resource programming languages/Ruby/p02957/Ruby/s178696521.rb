a = ARGV[0]
b = ARGV[1]
return "IMPOSSIBLE" if a == b
return "IMPOSSIBLE" if a < 0 || b < 0
return "IMPOSSIBLE" if a > 10**9 || b > 10**9
if (a+b)%2 == 0
  puts (a+2)/2
else
  puts "IMPOSSIBLE"
end