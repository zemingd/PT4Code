a,b,c,k = gets.split.map(&:to_i)
if k<=a then
  puts(k)
elsif k<=a+b then
  puts(a)
else
  puts(a-(k-(a+b)))
end
