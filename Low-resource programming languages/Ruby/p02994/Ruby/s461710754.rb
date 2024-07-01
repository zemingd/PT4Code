n, l = gets.split.map(&:to_i)
s = l
e = n + l - 1

if s <= 0 && e >= 0
  puts [*s..e].inject(:+)
elsif e < 0
  puts [*s..(e-1)].inject(:+)
else
  puts [*(s+1)..e].inject(:+)
end