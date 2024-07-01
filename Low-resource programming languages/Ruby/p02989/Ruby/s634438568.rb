gets.to_i

ary = gets.split(' ').map(&:to_i)

max = ary.max
min = ary.min

count = 0

(min..max).each do |d|
  arc_count = ary.select { |a| a >= d }.length
  abc_count = ary.select { |a| a < d }.length
  count += 1 if arc_count == abc_count
end

puts count
