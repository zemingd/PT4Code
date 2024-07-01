word = gets.chomp
arr = Array.new
until (line = gets) == "END_OF_TEXT\n"
   arr << line
end
count = 0
arr.each do |i|
   a = i.split(" ")
   a.map!{|h| h.downcase}
   a.map!{|h| h.delete("\n")}
   a.map!{|h| h.delete("\"")}
   count += a.count(word)
end
puts count