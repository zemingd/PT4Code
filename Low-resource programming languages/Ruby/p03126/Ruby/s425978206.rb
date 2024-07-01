N, M = gets.split.map(&:to_i)
data = Hash.new(0)
N.times do
  d = gets.split.map(&:to_i)
  k = d[0]
  k.times do |i|
    data[d[i + 1]] += 1
  end
end

count = 0
M.times do |i|
  if data[i+1] == N
    count += 1
  end
end

puts count