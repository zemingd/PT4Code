group = gets.chomp.to_i
transports = []
for i in 0..4
  transports[i] = gets.chomp.to_i
end

cities = [group, 0, 0, 0, 0, 0]
minutes = 0
while true
   for i in 0..4
     people = cities[i] > transports[i] ? transports[i] : cities[i]
     cities[i + 1] += people
     cities[i] = cities[i] - people
   end
   miminutes += 1
   if cities[6] >= group
     break
   end
end
print("#{miminutes}\n")