a,b,c=gets.split.map{|x| x.to_i}

i=0
a.upto(b) do |j|
  if(c%j == 0)
     i+=1
end
end
puts i