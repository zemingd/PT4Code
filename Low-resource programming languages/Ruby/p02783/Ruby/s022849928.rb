h,a = gets.split.map(&:to_i)
count = 0
while h < 0
  h = h - a
  count += 1
  if h < 0
    puts count
  end
end
