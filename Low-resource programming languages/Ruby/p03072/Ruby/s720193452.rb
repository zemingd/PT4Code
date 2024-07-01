_n = gets.to_i
hs = gets.split.map(&:to_i)

min_hight = 0
cnt = 0
hs.each do |h|
  if h >= min_hight
    cnt += 1
    min_hight = h
  end
end

puts cnt