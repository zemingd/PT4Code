A,B,C,D = gets.split.map(&:to_i)

start = [A,C].max
finish = [B,D].min

puts [0,start-finish].max

