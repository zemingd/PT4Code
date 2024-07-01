A,B,X = gets.split.map(&:to_i)
puts (A > X or A+B < X) ? "No" : "Yes"