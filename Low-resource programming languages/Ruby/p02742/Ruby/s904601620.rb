h, w = gets.chomp.split(' ').map(&:to_i)
hw = h * w
if h == 1 || w == 1
  puts 1
else
  puts hw % 2 == 0 ? (hw / 2) : (hw / 2) + 1
end