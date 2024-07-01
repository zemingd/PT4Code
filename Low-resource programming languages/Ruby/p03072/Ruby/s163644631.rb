N = gets.chomp
H = gets.chomp.split(" ")

count = 0
H.each_with_index do |h, i|
  if i == 0
    count += 1
    next
  end
  (0...i).each do |j|
    break if H[j] > H[i]
    count += 1 if i == j + 1
  end
end

puts count