A,B=gets.split.map(&:to_i)
p B.modulo(A).zero? ? A+B : B-A