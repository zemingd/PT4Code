k = gets.chomp.to_i
n = (k / 2).floor

if k % 2 != 0 then
  puts n * n + n
else
  puts n * n
end