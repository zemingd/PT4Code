height, width = gets.chomp.split.map(&:to_i)
puts (height * width).to_s + ' ' + ((height + width) * 2).to_s