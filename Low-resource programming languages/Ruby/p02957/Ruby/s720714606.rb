a = ARGV[0].to_i
b = ARGV[1].to_i
if (a == b) || (a < 0 || b < 0) || (a > 10**9 || b > 10**9)
  puts "IMPOSSIBLE"
else
  if ((a+b))%2 == 0
    puts (a+b)/2
  else
    puts "IMPOSSIBLE"
  end
end
