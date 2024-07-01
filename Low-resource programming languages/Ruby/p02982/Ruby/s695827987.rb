n, d = gets.chomp.split(' ').map(&:to_i)
arr = []
first = []
before = []
pair = []
count = 0
n.times do |i|
  pair = gets.chomp.split(' ').map(&:to_i)
  if i == 0 then
    first = pair
    before = pair
    next
  end
  sum = 0
  d.times do |j|
    sum = sum + ((before[j] - pair[j])**2)
  end
  distance = sum**(1/2.0)
  count = count + 1 if distance.to_i == distance
  before = pair
end

sum = 0
d.times do |j|
  sum = sum + ((pair[j] - first[j])**2)
end
distance = sum**(1/2.0)
count = count + 1 if distance.to_i == distance
puts count