

word = gets.chomp
arr = Array.new
until (line = gets) == "END_OF_TEXT\n"
   arr << line
end
count = 0
arr.each do |i|
   a = i.chomp.split(" ")
   a.map!{|h| h.downcase}
   a.map!{|h| h.delete("\"")}
   a.each do |j|
      if j == word
         count += 1
      end
   end
end
puts count