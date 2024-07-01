n, m = gets.split(' ').map(&:to_i)
left = []
right = []

m.times do
  l, r = gets.split(' ').map(&:to_i)
  left << l
  right << r
end

left_max = [left.max,1].max
right_min = [right.min,n].min

puts right_min - left_max + 1
