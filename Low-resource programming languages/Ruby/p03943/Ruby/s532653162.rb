c = gets.split.map(&:to_i).sort!
puts c[0] + c[1] == c[2] ? 'Yes' : 'No'