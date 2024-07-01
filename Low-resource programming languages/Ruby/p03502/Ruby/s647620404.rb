N=gets.to_i
puts N%(N.to_s.split("").map{|s|s.to_i}.inject(:+)) ? "Yes" : "No"