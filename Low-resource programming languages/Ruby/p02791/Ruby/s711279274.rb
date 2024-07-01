N = gets.to_i
P = gets.split.map(&:to_i)

res = 1
min = P[0]
N.times do |i|
  next if i == 0
  if min < P[i] then
    min = P[i]
  else
    res +=1
  end
end
puts res