n=gets.to_i
list=gets.split.map(&:to_i)
count=[0]*n
list.each{|i| count[i-1]+=1}

puts count