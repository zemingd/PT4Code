str = gets.chomp.split("")
first, last = str[0], str[-1]
puts first + (str.length - 2).to_s + last