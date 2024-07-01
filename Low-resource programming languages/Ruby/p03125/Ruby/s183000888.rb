n,m = gets.split.map(&:to_i)

if m % n == 0
  puts m + n
else
  puts m - n
end
