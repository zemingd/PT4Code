n = gets.to_i
$v = gets.split(" ").map(&:to_i)
top = 0
count = 0

$v.each do |i|
    count = count + 1 if i >= top 
    top = i if i > top
end

puts count