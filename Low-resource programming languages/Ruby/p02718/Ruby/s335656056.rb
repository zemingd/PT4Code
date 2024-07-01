n, a = gets.chomp.split(" ").map(&:to_i)
k = gets.chomp.split(" ").map(&:to_i)
j = k.sort.reverse
all = 0
(1..n).each do |i|
    all += k[i-1]
end
count =0
N = (all.to_f / (4 * a.to_f)).ceil
(0..a-1).each do |d|
   count += 1 if j[d] >= N
end
puts count.to_i == a ? "Yes" : "No"