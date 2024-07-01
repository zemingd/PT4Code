# Your code here!

val = gets.split.map(&:to_i)
vall = val.sort
vall.pop
p vall.inject(&:+)


