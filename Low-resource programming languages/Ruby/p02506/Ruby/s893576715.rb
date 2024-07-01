count = 0
word = gets.chomp
arr = Array.new
while true
   line = gets
   arr << line.chomp
   if line == "END_OF_TEXT\n"
      break
   end
end

arr.each do |i|
   a = i.split(" ")
   a.each do |j|
      if j == word
         count +=1
      end
   end
end
puts count