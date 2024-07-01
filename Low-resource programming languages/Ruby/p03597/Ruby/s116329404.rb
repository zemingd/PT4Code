array = gets.chomp.split(' ').map(&:to_i)
black = array[0] ** 2 - array[1]
print(black)
