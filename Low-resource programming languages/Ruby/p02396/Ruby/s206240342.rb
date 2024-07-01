array = []
while true
 number = gets.chomp
 array.push number
 if number == "0"
  break
 end
end

i = 0
while i < array.length-1
 puts "Case #{i+1}: #{array[i]}"
 i = i+1
end