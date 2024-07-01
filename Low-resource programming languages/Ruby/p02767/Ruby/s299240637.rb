array = readlines.map(&:chomp)
n = array[0].to_i
points = array[1].chomp.split(" ").map(&:to_i)

sum = 0
points.each do |v|
  sum += v
end

assembly = (sum / n.to_f).round

energy = 0
points.each do |v|
  energy += (v - assembly)**2
end

print(energy)