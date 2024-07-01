n = gets.to_i
ss = gets.chomp.split

x = ss.uniq.size

if x == 3
  puts("Three")
else
  puts("Four")
end