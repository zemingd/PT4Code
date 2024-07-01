T = gets.to_i
H = gets.split.map(&:to_i)

pre = 0
ans = 0

H.reverse!

1.upto(H.size - 1) do |i|
  if H[i-1] <= H[i]
    pre += 1
  else
    pre = 0
  end

  ans = [ans, pre].max
end

puts ans
