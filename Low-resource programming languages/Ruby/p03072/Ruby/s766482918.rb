n = gets.to_i
h = gets.split.map(&:to_i)
count = 0
max = 0
h.each do |h|
  if h >= max
    max = h
    count += 1
  end
end
p count
