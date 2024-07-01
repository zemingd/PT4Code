A,B,C,D=gets.split.map(&:to_i)
a=[A,C].max
b=[B,D].min
puts [b-a,0].max
