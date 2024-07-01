chars = gets.chomp.split ""

idx_a = 0
idx_z = 0

chars.each_with_index do |char, idx|
  if char == "A" 
    idx_a = idx
    break
  end
end

chars.reverse.each_with_index do |char, idx|
  if char == "Z"
    idx_z = chars.size - idx - 1
    break
  end
end

puts idx_z - idx_a + 1