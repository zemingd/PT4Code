A,B,C,D = gets.split.map(&:to_i)
puts ["Right", "Balanced", "Left"][((A+B)<=>(C+D))+1]