h,a = gets.split.map(&:to_i)
count = 1
while h < 0
  h = h - a
  count += count
  break if h < 0
  puts count
end
