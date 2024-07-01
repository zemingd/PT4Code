n,x = gets.split(' ')
y = []
y = gets.split(' ').map(&:to_i)

common_deviser = []

y.each do |i|
  common_deviser << (i - x.to_i).abs
end

puts common_deviser.min
