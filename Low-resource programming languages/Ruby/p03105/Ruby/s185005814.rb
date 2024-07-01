a,b,c = gets.split(" ").map!{|i| i.to_i}
o = 0;q = 0
if a*c <= b
  puts c
else 
 while o + a <= b
   o += a
   q += 1
   
 end
  puts q
end
