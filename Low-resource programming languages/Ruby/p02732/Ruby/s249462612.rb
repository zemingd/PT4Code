N=gets.to_i
a=[]
a=gets.split(" ").map{|i| i.to_i}

allcon=a.group_by{|i| i}.values.map{|i| i.length*(i.length-1)/2}.reduce{|i,j| i+j}

N.times do |i|
  count=0
  N.times do |j|
    next if i==j
    count+=1 if a[i]==a[j]
  end
  puts allcon-count
end

