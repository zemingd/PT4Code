line=gets
a,b=line.split(" ")
a=a.to_i
b=b.to_i

if a>b then
 puts "a>b"
else 
  if a<b then
   puts "a<b"
  else
   puts "a=b"
  end
end