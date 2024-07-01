tmp = gets.chomp.split.map(&:to_i)
newtmp = tmp.sort
puts "#{newtmp[0]} #{newtmp[1]} #{newtmp[2]}"