c1=gets.chomp.split("")
c2=gets.chomp.split("")
flag=true
3.times do|i|
  if c1[i]!=c2[2-i]
    flag=false
  end
end
puts flag ? "YES" : "NO"
