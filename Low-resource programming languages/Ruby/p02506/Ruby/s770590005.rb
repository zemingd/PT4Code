word = gets.chomp
arr = Array.new
term = "END_OF_TEXT\n"
while true
   line = gets
   arr << line
   break if line.index(term)
end
count = 0
arr.each do |i|
   a = i.split(" ")
   a.map!{|h| h.downcase}
   a.map!{|h| h.delete("\n")}
   a.map!{|h| h.delete("\"")}
   a.each do |j|
      if j == word
         count += 1
      end
   end
end
puts count