i, j, h = gets.split.map(&:to_i)

list = []
list << i + j
list << j + h
list << i + h

list = list.sort

puts list[0]