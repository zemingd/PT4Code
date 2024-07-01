n = gets.to_i
mountains = gets.split.map(&:to_i)
current_max = 0
res = 0
mountains.each do |m|
  if m >= current_max
    res += 1
    current_max = m
  end
end
puts res