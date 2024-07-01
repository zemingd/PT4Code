n = gets.to_i
h = gets.split.map(&:to_i)
count = 0
max = 0

n.times do |i|
  if h[i]>=max
    count+=1
    max = h[i]
  end
end

puts count