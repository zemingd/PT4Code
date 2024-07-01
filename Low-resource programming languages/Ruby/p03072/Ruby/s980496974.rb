N = gets.to_i
H = gets.split.map &:to_i

max = 0
count = 0
H.each do |h|
  if h >= max
    max = h
    count += 1
  end
end

puts count
