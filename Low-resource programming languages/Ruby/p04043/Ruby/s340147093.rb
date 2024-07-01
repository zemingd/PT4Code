num = gets.chomp.split(" ")
count = num[0].to_i
size = num[1].to_i
 
line = []
(1..count).each do |i|
    word = gets.chomp
    line << word
end
 
line2 = line.sort.to_a
 
puts line2.join