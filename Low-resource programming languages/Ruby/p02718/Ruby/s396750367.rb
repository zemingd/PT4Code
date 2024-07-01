# Your code here!

n, a = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.split(" ").map(&:to_i)
j = k.sort.reverse
all = 0
(1..n).each do |i|
    all += k[i-1]
end

count =0
 b = all.to_i / (4 * a)
#p b
N = (all.to_f / (4 * a.to_f)).ceil(2)
#p N
(0..a-1).each do |d|
    if j[d].to_i > N
        count += 1
    end
end
if a == count.to_i
    puts "Yes"
else
    puts "No"
end