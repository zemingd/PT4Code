N = gets.to_i
H = gets.split.map(&:to_i)

cnt = 0
ans = 0
hight = H.first

H[1..-1].each do |h|
  if hight >= h
    cnt += 1
  else
    cnt = 0
  end

  ans = cnt if ans < cnt
  hight = h
end

puts ans
