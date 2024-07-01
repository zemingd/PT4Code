n = gets.to_i
h = gets.split.map(&:to_i)

sum = 0
max = 0

n.times do |m|
  if max <= h[m]
    sum += 1
    max = h[m]
  end
end

puts sum