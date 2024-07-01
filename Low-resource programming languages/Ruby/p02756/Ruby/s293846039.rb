a=gets.chomp.split("")
b=gets.chomp.to_i
an=true
b.times do 
  c=gets.chomp.split
  if c[0]=="1"
    an=!an
  elsif (c[1]=="2"&&an)||(c[1]=="1"&&!an)
    a.push(c[2])
  else a.unshift(c[2])
  end
end
if !an
  a=a.reverse
end
puts a.join