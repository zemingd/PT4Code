h, a = gets.split(" ").map(&:to_i)
sum = gets.split(" ").map(&:to_i)
sum.each do |n|
     h = h-n
end
if h > 0
    puts "No"
else
    puts "Yes"
end