num,color = gets.chomp.split(" ")
qu = num.to_i
colornum = color.to_i

list = (1..colornum).to_a

line = list.permutation(qu).to_a
puts line.length