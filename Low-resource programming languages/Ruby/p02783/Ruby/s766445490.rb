h,a = gets.split.map(&:to_i)
count = 1
count += count while h-a < 0
puts count