n,m,c = gets.split.map &:to_i
b = gets.split.map &:to_i

count = 0

n.times do |i|
  ai = gets.split.map &:to_i
  sum = 0
  m.times do |j|
    sum += b[j] * ai[j]
  end
  if sum + c > 0
    count += 1
  end
end

puts count