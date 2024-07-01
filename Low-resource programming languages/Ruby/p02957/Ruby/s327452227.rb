a,b=gets.chomp.split(" ").map(&:to_i)
if (a-b)%2==0 then
  puts((a+b)/2)
else
  puts("IMPOSSIBLE")
end