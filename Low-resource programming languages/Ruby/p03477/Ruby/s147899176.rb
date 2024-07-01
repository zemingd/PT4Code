A,B,C,D=gets.split.map &:to_i
puts A+B<C+D ? "Left": (A+B==C+D) ? "Balanced" : "Right"