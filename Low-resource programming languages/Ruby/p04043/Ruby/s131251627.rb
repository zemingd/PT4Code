num = gets.chomp.split(" ")
count = num[0].to_i
size = num[1].to_i

line = []
(1..count).each do |i|
    word = gets.chomp
    line << word
end

line2 = line.permutation.to_a

list = []
(0..line2.length/count-1).each do |i|
    list <<  line2[i].join
end
newary = list.sort

puts newary[0]