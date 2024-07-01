while (inputs = gets.chomp.split.map(&:to_i)) != [0, 0]
  puts inputs.sort.join(' ')
end