a = gets.split.map(&:to_i)
# p a.sort
sort = a.sort
# p sort[1] - sort[0]
# p sort[2] - sort[1]
p sort[1] - sort[0] + sort[2] - sort[1]
