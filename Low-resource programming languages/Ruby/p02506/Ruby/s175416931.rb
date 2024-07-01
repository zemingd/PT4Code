count=0
while line =gets.chomp |i|
count+=1 if line[0]==line[i]
end
puts #{count}