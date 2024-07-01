ain = gets.chomp

array = ain.split(" ").map{|e| e.to_i}

if array[1]%array[0] == 0
  puts array[1]+array[0]
else
  puts array[1]-array[0]
end