gets.to_i

ary = gets.split(' ').map(&:to_i)

max = ary.max
min = ary.min

count = 0

(min..max).each do |d|
  arc = ary.select { |a| a >= d }
  count += 1 if arc.length == (ary - arc).length
end

puts count
