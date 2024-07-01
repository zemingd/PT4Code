n = gets.to_i
a = gets.split.map(&:to_i)

max_count = 0
a.each do |x|
  count = 0
  a.each do |y|
    count += 1 if x==y or x==y+1 or x==y-1
  end
  if count > max_count
    max_count = count
  end
end
puts max_count
