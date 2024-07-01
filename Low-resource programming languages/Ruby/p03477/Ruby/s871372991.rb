A,B,C,D = gets.split.map(&:to_i)
puts ["Left", "Balanced", "Right"][((A+B)<=>(C+D))+1]