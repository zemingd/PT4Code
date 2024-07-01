n,m = gets.split.map &:to_i
x = gets.split.map &:to_i

if n >= m
    puts 0
    exit
end

x.sort!
diffs = []

(m-1).times do |i|
    diffs[i] = x[i+1] - x[i]
end

sorted_diffs = diffs.sort.reverse

road = x[-1] - x[0]

(n-1).times do |i|
    road -= sorted_diffs[i]
end

puts road