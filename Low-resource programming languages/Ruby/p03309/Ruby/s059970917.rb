gets
i=0
z=gets.split.map{|a|a.to_i-(i+=1)}.sort
p z.map{|b|(b-z[i/2]).abs}.reduce :+