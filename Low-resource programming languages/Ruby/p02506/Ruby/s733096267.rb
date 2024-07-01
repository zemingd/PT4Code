count = 0
word = gets.chomp
arr = Array.new
until (line = gets) == "END_OF_TEXT\n"
   arr << line.chomp
end
arr.each do |i|
   a = i.split(" ")
   a.map!{|h| h.downcase}
   a.map!{|h| h.delete("\"")}
   a.each do |j|
      if j == word
         count += 1
      end
   end
end
puts count