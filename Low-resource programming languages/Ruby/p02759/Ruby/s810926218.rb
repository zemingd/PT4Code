list = []
(1..3).each do |i|
    line = gets.chomp.split(" ")
    (0..2).each do |k|
        list.push(line[k].to_i)
    end
end
 
count = gets.chomp.to_i
 
list2 = []
(1..count).each do |i|
    num = gets.chomp.to_i
    if list.include?(num)
        list2.push(list.index(num))
    end
end
 
if list2.include?(0) && list2.include?(1) && list2.include?(2)
    puts "Yes"
elsif list2.include?(3) && list2.include?(4) && list2.include?(5)
    puts "Yes"
elsif list2.include?(6) && list2.include?(7) && list2.include?(8)
    puts "Yes"
elsif list2.include?(0) && list2.include?(3) && list2.include?(6)
    puts "Yes"
elsif list2.include?(1) && list2.include?(4) && list2.include?(7)
    puts "Yes"
elsif list2.include?(2) && list2.include?(5) && list2.include?(8)
    puts "Yes"
elsif list2.include?(0) && list2.include?(4) && list2.include?(8)
    puts "Yes"
elsif list2.include?(2) && list2.include?(4) && list2.include?(6)
    puts "Yes"
else
    puts "No"
end