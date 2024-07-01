n = gets.to_i
h = gets.chomp.split.map(&:to_i)
cnt = 0
max = 0
h.each do |h|
  if h >= max
    max = h
    cnt += 1
  end
end
p cnt
