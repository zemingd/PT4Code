a,b=gets.chomp.split().map(&:to_s)
c,d=gets.chomp.split().map(&:to_i)
e=gets.to_s
if a == e
  puts [c-1,d].join(" ")
else
  puts [c,d-1].join(" ")
end  
