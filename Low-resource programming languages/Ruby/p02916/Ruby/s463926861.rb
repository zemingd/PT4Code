count = gets.to_i
count2 = count - 1
 
dishes = []
satisfiedsB =[]
satisfiedsC = []
 
count.times do
  dishes << gets.to_i
end
 
count.times do
  satisfiedsB << gets.to_i
end
 
count2.times do
  satisfiedsC << gets.to_i
end
 
time = 0
sum = 0
 
count.times do 
  time += 1
  if time == 1
    index = time - 1
    dish = dishes[index]
    sum = sum + satisfiedsB[dish]
  else
    index = time - 1
    dish = dishes[index]
    sum = sum + satisfiedsB[dish]
    
    before_index = index - 1
    before_dish = dishes[before_index]
    
    if dish == before_dish + 1
      sum = sum + satisfiedsC[before_dish]
    end
  end
end
 
puts sum