A, B = gets.split.map &:to_i
C = [A + B, A - B, A * B]
puts C.max