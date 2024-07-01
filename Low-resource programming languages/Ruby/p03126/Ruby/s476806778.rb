n, m = gets.chomp.split.map(&:to_i)
ary = gets.chomp.split.map(&:to_i)
ary.shift
(n-1).times do
    tmp = gets.chomp.split.map(&:to_i)
    tmp.shift
    # p tmp
    ary = ary & tmp
end

puts ary.length

# count = 0
# n.times do |i|
#     if ary.count(i) == m
#         count += 1
#     end
# end

# puts count