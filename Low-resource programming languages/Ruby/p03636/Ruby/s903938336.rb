str = $stdin.gets.chomp

x = str.length - 2
xs = x.to_s

puts str[0] + xs + str[-1]