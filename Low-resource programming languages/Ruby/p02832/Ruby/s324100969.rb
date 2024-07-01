n = gets.to_i
a = 1

gets.split.each do |block|
  block = block.to_i
  a += 1 if a == block
end

puts a == 1 ? -1 :  n - a + 1