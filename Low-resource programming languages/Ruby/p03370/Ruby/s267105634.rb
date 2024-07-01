i ,glam =gets.split(" ").map(&:to_i)
cake = []
sum = 0
(0..i-1).each do |n|
     cake[n] = gets.chomp.to_i
     sum +=1 
end
puts sum += (glam-cake.sum)/cake.min
