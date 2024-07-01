N = gets.to_i
Ss = gets.chomp.split

if Ss.uniq.length == 3 then
  puts("Three")
elsif Ss.uniq.length == 4 then
  puts("Four")
end