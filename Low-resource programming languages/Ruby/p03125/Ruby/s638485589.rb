A,B = gets.split.map(&:to_i)
puts B % A == 0 ?  B + A : B - A
