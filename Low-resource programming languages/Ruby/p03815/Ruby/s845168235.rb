x = STDIN.gets.chomp.to_i

d = x / 11
m = x % 11

if m == 0 then
  STDOUT.puts (d * 2)
elsif m <= 6 then
  STDOUT.puts (d * 2 + 1)
else
  STDOUT.puts (d * 2 + 2)
end