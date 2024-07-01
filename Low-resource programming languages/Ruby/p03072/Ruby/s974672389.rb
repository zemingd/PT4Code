N = gets.chomp.to_i
H = gets.chomp.split.map(&:to_i)

count = 0
H.each_with_index do |h, i|
  if i == 0
    count += 1
    next
  end
  (0..i).each do |j|
    break if H[j] > H[i]
    count += 1 if i == j
  end
end

puts count