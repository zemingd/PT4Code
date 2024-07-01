a=gets.chomp.split("")
b=gets.chomp.to_i
h=0
b.times do 
  c=gets.chomp.split
  if c[0]=="1"
    h+=1
  elsif c[1]=="2"&&h%2==0
    a.push(c[2])
  elsif h%2!=0&&c[1]=="1"
    a.push(c[2])
  elsif c[1]=="1"&&h%2==0
    a.unshift(c[2])
  elsif h%2!=0&&c[1]=="2"
    a.unshift(c[2])
end
end