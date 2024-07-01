a=[[1,3,5,7,8,10,12],[4,6,9,11],[2]]
b=gets.chomp.split.map("")

puts (b.select{|a| a.include?(b[0])}).include?(b[1]) ? "Yes" : "No"