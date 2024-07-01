n = gets.to_i
a = gets.split(" ").map(&:to_i)

count = 0
(0..n-1).each do |i|
    count = count + 1 if a[i].to_i >= a[i+1].to_i
end

puts count