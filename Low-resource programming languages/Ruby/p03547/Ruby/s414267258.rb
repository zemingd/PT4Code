x,y=gets.split

if x.ord-64 > y.ord-64
  puts ">"
elsif x.ord-64 < y.ord-64
  puts "<"
else
  puts "="
end