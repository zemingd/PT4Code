N = gets.to_i
P = gets.split(' ').map(&:to_i)
count = N
lowest = P[0]
(1..(N-1)).each do |i|
  now = count
  if lowest < P[i]
    count -= 1
  end
  lowest = P[i] if now == count
end
puts count