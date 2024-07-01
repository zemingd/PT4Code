n = gets.chomp.to_i
arr = gets.chomp.split(' ').map(&:to_i)
counter = 0

for i in arr.min..arr.max do
  hi_target = []
  low_target = []

  hi_target = arr.select { |x| x >= i}
  low_target = arr.select { |x| x < i}
  counter += 1 if hi_target.count == low_target.count
end

puts counter