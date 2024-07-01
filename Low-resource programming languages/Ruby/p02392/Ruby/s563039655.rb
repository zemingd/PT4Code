array = gets.split(" ").map!(|item| item.to_i)
result = 
if (array[0] < array[1] && array[1] < array[2]) 
    puts "Yes"
else
    puts "No"