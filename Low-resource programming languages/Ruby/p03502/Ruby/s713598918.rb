N=gets
puts N.to_i%(N.split("").map(&:to_i).inject(:+)) == 0 ? "Yes" : "No"