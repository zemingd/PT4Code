count=0
i=0
while line =gets.split(" ").split("\n").chomp 
i+=1
if line[0]==line[i]
count+=1
end
end
puts "#{count}"