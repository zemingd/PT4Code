N = gets.to_i
d = gets.split().map(&:to_i)
sum = 0
index = 1

N.times do |i|
  di = d[i]
  (index..N-1).each do |j| 
    sum += di * d[j]
  end
  index += 1
end

puts sum