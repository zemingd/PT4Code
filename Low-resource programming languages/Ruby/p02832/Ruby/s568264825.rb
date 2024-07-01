n = gets.chomp.to_i
blocks = gets.chomp.split.map(&:to_i)

num = 1
blocks.each do |block|
  num += 1 if num == block
end

puts num < 2 ? '-1' : n - (num - 1)