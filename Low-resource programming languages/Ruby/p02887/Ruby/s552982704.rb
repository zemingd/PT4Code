counter=gets.to_i
line=gets.to_s
b=line[0]
answer=1

counter.times do |count| 
  if line[count] != b
    answer =answer+1
    b = line[count]
  end  
end  
puts answer