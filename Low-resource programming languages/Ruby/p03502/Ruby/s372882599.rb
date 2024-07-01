#ABC080 B
n = gets.chomp
sum = 0
(0..n.size-1).each do |i|
    sum += n[i].to_i
end

if n.to_i % sum == 0
    puts "Yes"
else
    puts "No"
end