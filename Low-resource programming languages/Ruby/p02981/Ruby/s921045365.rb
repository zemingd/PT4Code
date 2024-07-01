n = gets.split.map(&:to_i)
if n[1]*n[0] > n[2]
  puts n[2]
else
  puts n[1]*n[0]
end
