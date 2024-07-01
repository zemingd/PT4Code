N=gets.to_i
a=[]
b=[]
a=gets.split(" ").map{|i| i.to_i}

allcon=a.group_by{|i| i}.values.map{|i| i.length*(i.length-1)/2}.reduce{|i,j| i+j}
agroup=a.group_by{|j| j}
b=a.map{|i| (agroup[i].length-1)}

b.each do |i|
  puts allcon-i
end

