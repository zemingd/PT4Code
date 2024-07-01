N = gets.to_i
H = gets.split.map(&:to_i)

max = 0
sum = 0
H.each do |h|
  if h >= max
    max = h
    sum += 1
  end
end

puts sum