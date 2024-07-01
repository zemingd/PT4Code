xs = gets.split.map(&:to_i)
idx=0
xs.each_with_index do |x, i|
  if x == 0
    idx = i + 1
    break
  end
end
puts x