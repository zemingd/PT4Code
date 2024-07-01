a,b = gets.strip.split.map(&:to_i)
c = [a,b].max
d = [a,b].min
s = c
c -= 1
s += [c,d].max
puts s