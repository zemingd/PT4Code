n = gets.chomp.to_i
ps = gets.chomp.split.map(&:to_i)

sorted = ps.sort

diff = 0
(0...n).each do |i|
    diff = diff + 1 if ps[i] != sorted[i]
end

puts diff <= 2 ? 'YES' : 'NO'
