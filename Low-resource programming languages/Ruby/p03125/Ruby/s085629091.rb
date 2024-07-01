A, B = gets.split.map(&:to_i)
p B%A == 0 ? (A + B) : (B - A)