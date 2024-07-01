n = gets.to_i
heights = gets.split.map(&:to_i)
ans = 0
h_left = 0
tmp = 0
heights.each do |h|
  if h_left >= h
    tmp += 1
  else
    tmp = 0
  end

  ans = tmp if ans < tmp
  h_left = h
end
puts ans