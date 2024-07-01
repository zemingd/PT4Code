A,B,X = gets.split.map(&:to_i)
puts A <= X && X <= A+B ? "YES" : "NO"