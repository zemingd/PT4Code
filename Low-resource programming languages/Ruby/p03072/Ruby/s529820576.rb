n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)

max = 0
count = 0
h.each do |i|
  if i >= max
    max = i
    count += 1
  end
end
puts count
