require 'scanf'

target = gets.downcase.chomp
cnt = 0
while true
  line = gets.chomp.downcase.split(" ")
  line.each do |word|
    cnt+= 1 if word == target
  end
  break if line[line.length - 1] == "end_of_text"
end
puts cnt