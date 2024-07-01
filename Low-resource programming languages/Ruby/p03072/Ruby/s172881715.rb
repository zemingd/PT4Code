n = gets.chomp.to_i
h = gets.chomp.split(' ').map(&:to_i)
max = -1
count = 0

h.each do |takasa|
  if (takasa >= max)
    count += 1
    max = takasa
  end
end
puts count