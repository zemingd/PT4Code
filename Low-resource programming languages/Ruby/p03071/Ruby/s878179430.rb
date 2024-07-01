A,B = gets.split.map &:to_i
C = [A,B].max
puts A == B ? A*2 : C*2-1