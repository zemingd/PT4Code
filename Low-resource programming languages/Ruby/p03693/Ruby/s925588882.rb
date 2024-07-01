r,g,b=gets.chomp.split
nm=r+g+b
if nm.to_i.modulo(4)==0
  puts("YES")
else
  puts("NO")
end
