n = gets.to_i
arr = gets.strip.split(' ').map(&:to_i)
point = arr.sum / arr.size
sum = 0
arr.each do |e|
  sum += ((e - point) ** 2)
end
puts sum