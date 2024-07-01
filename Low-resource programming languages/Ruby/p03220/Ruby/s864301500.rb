n = gets.chomp.to_i
t, a = gets.split(" ").map(&:to_i)
ary = gets.split(" ").map(&:to_i)
tmp = []

n.times do |i|
    tmp << t - ary[i] * 0.006
end

puts tmp.index(tmp.min_by{|x| (x - a).abs}) + 1
