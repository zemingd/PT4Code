require 'scanf'

target = gets.downcase.chomp
cnt = 0
while line = gets.chomp.strip.downcase
  break if line == "end_of_text"
  line = line.split(" ")
  line.each do |word|
    cnt+= 1 if word == target
  end
end
puts cnt