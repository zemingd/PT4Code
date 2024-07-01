n, a = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.split(" ").map(&:to_i)
j = k.sort.reverse
# p j
all = 0
(1..n).each do |i|
    all += k[i-1]
end
# puts all
count =0
# p all.to_i / (4 * a)
(0..a-1).each do |d|
    if j[d].to_i > (all.to_i / (4 * a)).round(2)
        count += 1
    end
end
# p j[2].to_i > all.to_i / (4 * a).round(2)
# p count
if a == count.to_i
    puts "Yes"
else
    puts "No"
end