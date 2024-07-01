n=gets.split(&:to_i)
H=gets.split.map(&:to_i)
max = 0
cnt = 0
H.each do |h|
  if h >= max
    cnt += 1
    max = h
  end
end
puts cnt