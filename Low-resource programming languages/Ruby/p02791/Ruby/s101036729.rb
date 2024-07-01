N = gets.to_i
P = gets.split.map(&:to_i)

cnt = 0
min = 999999999
(0..(N-1)).each do |i|
  if P[i] <= min
    min = P[i]
  end
  if !(P[i] > min)
    cnt += 1
  end
end

puts cnt