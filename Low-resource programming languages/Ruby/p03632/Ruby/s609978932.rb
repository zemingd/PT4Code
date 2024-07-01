# AtCoder Beginner Contest 070

array = gets.split.map(&:to_i)

t1 = [array[0],array[2]].max
t2 = [array[1],array[3]].min

puts [t2 - t1, 0].max

