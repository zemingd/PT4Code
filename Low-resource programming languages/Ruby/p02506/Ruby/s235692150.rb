count=0
i=0
while line =gets.chomp
i+=1
if line[0]==line[i]
count+=1
end
end
puts "#{count}"