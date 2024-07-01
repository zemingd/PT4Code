target = gets.chomp
cnt = 0
while true
  line = gets.chomp.split(" ")
  break if line[0] == "END_OF_TEXT"
  line.each do |word|
    cnt+= 1 if word.upcase == target.upcase
  end
end
puts cnt