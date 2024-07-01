target = gets.chomp.upcase
cnt = 0
while line = gets
  # line.strip!
  break if line == "END_OF_TEXT"
  line = line.split(" ")
  line.each do |word|
    cnt+= 1 if word.upcase == target.upcase
  end
end
puts cnt


# .chomp.strip.upcase