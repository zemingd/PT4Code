n = gets.chomp.to_i
ps = gets.chomp.split.map(&:to_i)

cnt = 0
(1..n-2).each do |i|
    mid = ps[i - 1, 3].sort[1]
    cnt = cnt + 1 if ps[i] == mid
end

puts cnt
