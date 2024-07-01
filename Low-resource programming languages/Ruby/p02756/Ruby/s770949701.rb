io = STDIN
s=io.gets.chomp
q=io.gets.to_i
ar=[]
str=s
q.times do 
  x,y,z = io.gets.split
  if x=="1"
    str=str.reverse
  else
    if y=="1"
      str=z+str
    else
      str=str+z
    end
  end
end
puts str
