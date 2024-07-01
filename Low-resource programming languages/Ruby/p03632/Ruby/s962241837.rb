a,b,c,d = gets.split(" ").map!{|i| i.to_i}
if a <= b
  puts b-c
else puts c-b
end