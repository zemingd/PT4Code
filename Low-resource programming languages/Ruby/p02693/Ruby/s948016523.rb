
k = gets.chomp.to_i
a, b = gets.chomp.split(" ").map(&:to_i)
 

count = 0
(a..b).each do |i|
    if i % k == 0
        count += 1
    end
end

if count >= 1
    puts "OK"
else
    puts "NG"
end