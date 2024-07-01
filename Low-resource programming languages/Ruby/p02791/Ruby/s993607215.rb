N = gets.to_i
P = gets.split.map(&:to_i)
min = P[0]
cnt = 0
N.times do |i|
  if P[i] <= min
    cnt += 1
    min = P[i]
  end
end
puts cnt