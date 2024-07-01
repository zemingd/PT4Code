a=gets.chomp.split("")
b=gets.chomp.to_i
b.times do 
  c=gets.chomp.split
  if c[0]=="2"
    if c[1]=="1"
       a.unshift(c[2])
    elsif c[1]=="2"
      a.push(c[2])
    end
  else a=a.reverse
  end
end
puts a.join