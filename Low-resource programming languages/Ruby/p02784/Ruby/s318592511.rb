H, N = gets.split(" ").map(&:to_i)
arr = gets.split(" ").map(&:to_i)
sum = 0

arr.each do |n|
    sum += n
end

if sum >= H
    puts "Yes"
else
    puts "No"
end