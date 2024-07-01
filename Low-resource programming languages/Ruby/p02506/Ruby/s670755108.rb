require 'scanf'

target = gets.chomp.downcase
cnt = 0
while true
  line = gets.chomp.downcase.split(" ")
  break if line[0] == "end_of_text"
  line.each do |word|
    cnt+= 1 if word == target
  end
end
puts cnt